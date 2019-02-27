class CfgFunctions {
    class coopr {
        class coopr_tasks_functions {
            file = "x\coopr\addons\tasks\functions";
            class setupTasksModule {};
            class broadcastReconReports {};
            class convertReconReportsToTasks {};
            class createCooprTask {};
            class createReconTask {};
            class validateReport {};
            class countTask {};
            class requestCooprTask {};
            class strengthAccuracy {};
            class checkTaskTracking {};
            class initTaskTracker {};
            class createTaskMarker {};
        }
        class coopr_tasks_helper {
            file = "x\coopr\addons\tasks\helper";
            class getMaxForStrength {};
            class getMinForStrength {};
            class determineTaskType {};
        }
        class coopr_tasks_tests {
            file = "x\coopr\addons\tasks\tests";
            class tests_tasks_runSuite { postInit = 1 };
            class tests_countTasks {};
            class tests_strengthAccuracy {};
            class tests_minMaxForStrength {};
            class tests_determineTaskType {};
            class tests_checkTaskTracking {};
            class tests_initTaskTracker {};
        }
    }
}
