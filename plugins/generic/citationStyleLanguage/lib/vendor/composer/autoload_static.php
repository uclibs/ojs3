<?php

// autoload_static.php @generated by Composer

namespace Composer\Autoload;

class ComposerStaticInit3020b713211e943828d81705414ee548
{
    public static $files = array (
        '0e6d7bf4a5811bfa5cf40c5ccd6fae6a' => __DIR__ . '/..' . '/symfony/polyfill-mbstring/bootstrap.php',
    );

    public static $prefixLengthsPsr4 = array (
        'S' => 
        array (
            'Symfony\\Polyfill\\Mbstring\\' => 26,
            'Seboettg\\Collection\\' => 20,
            'Seboettg\\CiteProc\\' => 18,
        ),
        'M' => 
        array (
            'MyCLabs\\Enum\\' => 13,
        ),
    );

    public static $prefixDirsPsr4 = array (
        'Symfony\\Polyfill\\Mbstring\\' => 
        array (
            0 => __DIR__ . '/..' . '/symfony/polyfill-mbstring',
        ),
        'Seboettg\\Collection\\' => 
        array (
            0 => __DIR__ . '/..' . '/seboettg/collection/src/Seboettg/Collection',
        ),
        'Seboettg\\CiteProc\\' => 
        array (
            0 => __DIR__ . '/..' . '/seboettg/citeproc-php/src',
        ),
        'MyCLabs\\Enum\\' => 
        array (
            0 => __DIR__ . '/..' . '/myclabs/php-enum/src',
        ),
    );

    public static function getInitializer(ClassLoader $loader)
    {
        return \Closure::bind(function () use ($loader) {
            $loader->prefixLengthsPsr4 = ComposerStaticInit3020b713211e943828d81705414ee548::$prefixLengthsPsr4;
            $loader->prefixDirsPsr4 = ComposerStaticInit3020b713211e943828d81705414ee548::$prefixDirsPsr4;

        }, null, ClassLoader::class);
    }
}
