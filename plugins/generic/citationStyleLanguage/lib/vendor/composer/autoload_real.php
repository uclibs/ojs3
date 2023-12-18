<?php

// autoload_real.php @generated by Composer

class ComposerAutoloaderInitf2f7ef72bf1bc13e23f42c9fbb01b024
{
    private static $loader;

    public static function loadClassLoader($class)
    {
        if ('Composer\Autoload\ClassLoader' === $class) {
            require __DIR__ . '/ClassLoader.php';
        }
    }

    /**
     * @return \Composer\Autoload\ClassLoader
     */
    public static function getLoader()
    {
        if (null !== self::$loader) {
            return self::$loader;
        }

        require __DIR__ . '/platform_check.php';

        spl_autoload_register(array('ComposerAutoloaderInitf2f7ef72bf1bc13e23f42c9fbb01b024', 'loadClassLoader'), true, true);
        self::$loader = $loader = new \Composer\Autoload\ClassLoader(\dirname(__DIR__));
        spl_autoload_unregister(array('ComposerAutoloaderInitf2f7ef72bf1bc13e23f42c9fbb01b024', 'loadClassLoader'));

        require __DIR__ . '/autoload_static.php';
        call_user_func(\Composer\Autoload\ComposerStaticInitf2f7ef72bf1bc13e23f42c9fbb01b024::getInitializer($loader));

        $loader->register(true);

        $includeFiles = \Composer\Autoload\ComposerStaticInitf2f7ef72bf1bc13e23f42c9fbb01b024::$files;
        foreach ($includeFiles as $fileIdentifier => $file) {
            composerRequiref2f7ef72bf1bc13e23f42c9fbb01b024($fileIdentifier, $file);
        }

        return $loader;
    }
}

/**
 * @param string $fileIdentifier
 * @param string $file
 * @return void
 */
function composerRequiref2f7ef72bf1bc13e23f42c9fbb01b024($fileIdentifier, $file)
{
    if (empty($GLOBALS['__composer_autoload_files'][$fileIdentifier])) {
        $GLOBALS['__composer_autoload_files'][$fileIdentifier] = true;

        require $file;
    }
}
