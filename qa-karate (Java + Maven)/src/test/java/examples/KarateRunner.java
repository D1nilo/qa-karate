package examples;

import com.intuit.karate.junit5.Karate;

public class KarateRunner {

    // Ejecuta TODO
    // @Karate.Test
    public Karate runAll() {
        return Karate.run("classpath:examples");
    }

    // --- EJECUTAR UN FEATURE ESPECÍFICO ---
    // Descomenta para correr SOLO este feature:
    // @Karate.Test
    // public Karate runSoloEsteFeature() {
    //     return Karate.run("classpath:examples/pet/obtener.feature");
    // }

    // --- EJECUTAR POR NOMBRE (si el .feature está en el mismo paquete logical de 'examples') ---
    @Karate.Test
    public Karate runPorNombreCorto() {
        return Karate.run("obtenerPet").relativeTo(getClass());
        // }

        // --- EJECUTAR UNA ESCENA ESPECÍFICA POR LÍNEA ---
        // @Karate.Test
        // public Karate runPorLinea() {
        //     return Karate.run("classpath:examples/pet/obtener.feature:18");
        // }
    }
}
