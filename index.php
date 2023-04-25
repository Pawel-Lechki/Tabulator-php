<?php
    require_once "./config/dbConfig.php";
    require_once "./config/smarty.php";
    // prosty autoloader
    spl_autoload_register(function ($class) {
        require __DIR__ . "/src/$class.php";
    });

    $database = new Database($host, $name, $user, $password);

    $gateway = new Gateway($database);



    $products = $gateway->getAll();

    $data = json_encode($products);

//    $smarty->assign('data', json_encode($products));
//    $smarty->display('table.tpl');

    $categories = $gateway->getCategories();

    $smarty->assign('categories', $categories);
    $smarty->display('select.tpl');

    if(isset($_REQUEST['idCategory'])) {
       $category = $_REQUEST['idCategory'];

       $response = $gateway->getWithCategory($category);

        $smarty->assign('response', json_encode($response));
        $smarty->display('table2.tpl');
    }