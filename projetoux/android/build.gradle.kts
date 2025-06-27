allprojects {
    repositories {
        google()
        mavenCentral()
    }
}

// Centraliza os diretórios de build dos subprojetos na pasta build/raiz
subprojects {
    buildDir = file("../build/${project.name}")
    evaluationDependsOn(":app") // Só mantenha se for mesmo necessário
}

// Task de limpeza do build
tasks.register<Delete>("clean") {
    delete(rootProject.buildDir)
}