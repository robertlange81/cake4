<?php
/*
 * Local configuration file to provide any overrides to your app.php configuration.
 * Copy and save this file as app_local.php and make changes as required.
 * Note: It is not recommended to commit files with credentials such as app_local.php
 * into source code version control.
 */
return [
    /*
     * Debug Level:
     *
     * Production Mode:
     * false: No error messages, errors, or warnings shown.
     *
     * Development Mode:
     * true: Errors and warnings shown.
     */
    'debug' => filter_var(env('DEBUG', true), FILTER_VALIDATE_BOOLEAN),

    /*
     * Security and encryption configuration
     *
     * - salt - A random string used in security hashing methods.
     *   The salt value is also used as the encryption key.
     *   You should treat it as extremely sensitive data.
     */
    'Security' => [
        'salt' => env('SECURITY_SALT', 'aaaaa'),
    ],

    /*
     * Connection information used by the ORM to connect
     * to your application's datastores.
     *
     * See app.php for more configuration options.
     */
    'Datasources' => [
        'default' => [
            'className' => 'Cake\Database\Connection',
            'driver' => 'Cake\Database\Driver\Mysql',
            'persistent' => false,
            //'host' => 'db',  // für docker
            'host' => '127.0.0.1',  // für win oder wsl
            'port' => 3307,  // Der Standard-MySQL-Port
            'username' => 'root',  // Der Benutzername, wie in Ihrer Docker-Umgebung definiert
            'password' => 'root',  // Das Passwort, wie in Ihrer Docker-Umgebung definiert
            'database' => 'cake',  // Der Datenbankname, wie in Ihrer Docker-Umgebung definiert
            'encoding' => 'utf8mb4',  // Empfohlene Kodierung
            'timezone' => 'UTC',  // Zeitzone nach Bedarf anpassen
            'flags' => [],  // Zusätzliche Flags können hier nach Bedarf gesetzt werden
            'cacheMetadata' => true,  // Metadaten cachen
            'log' => true,  // Auf true setzen, um SQL-Logs in Entwicklungsumgebung zu aktivieren
            'quoteIdentifiers' => false,  // Auf true setzen, wenn SQL-Reserved Words als Identifiers genutzt werden
            'url' => env('DATABASE_URL', null),  // Für alternative Konfigurationen über Umgebungsvariablen
        ],
        /*
         * The test connection is used during the test suite.
         */
        'test' => [
            'host' => 'localhost',
            //'port' => 'non_standard_port_number',
            'username' => 'my_app',
            'password' => 'secret',
            'database' => 'test_myapp',
            //'schema' => 'myapp',
            'url' => env('DATABASE_TEST_URL', 'sqlite://127.0.0.1/tmp/tests.sqlite'),
        ],
    ],

    /*
     * Email configuration.
     *
     * Host and credential configuration in case you are using SmtpTransport
     *
     * See app.php for more configuration options.
     */
    'EmailTransport' => [
        'default' => [
            'host' => 'localhost',
            'port' => 25,
            'username' => null,
            'password' => null,
            'client' => null,
            'url' => env('EMAIL_TRANSPORT_DEFAULT_URL', null),
        ],
    ],
];
