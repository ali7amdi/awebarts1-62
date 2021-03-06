<h3>Banners</h3>
<?php

include '../includes/init.php';
include '../includes/autoloader.php';

if ($_POST OR @$_GET['action']) {

    // Delete:
    if (isset($_GET['action']) AND $_GET['action'] == "delete") {

        try {            
            $tablename = "banners";
            $id = $_GET['id'];
            
            // get the banner url via id            
            $getbanner = new Display($tablename);
            $banner = $getbanner->getRecordByID($id);
                        
            // delete the file
            $filesToDelete[] = $banner['bannerUrl'];
                       
            $delete = new DeleteFile($filesToDelete);
            if($delete == TRUE)
                echo "Files successfuly deleted.";
            
            // Delete from database banners table            
            
            $debanner = new Delete($tablename);
            $debanner->deletRecordByID($id);
            
        } catch (Exception $exc) {
            echo $exc->getMessage();
        }
    }



    if (isset($_POST['submit']) && $_POST['submit'] == 'Upload') {
        if (isset($_FILES)) {
            try {
                $file = $_FILES['image'];
                $allowedExts = array('jpg', 'png');
                $uploadsDirecotry = "resources/uploads/";
                $maxSize = 4000000;
                $upload = new Upload($file, $allowedExts, $uploadsDirecotry, $maxSize);
                $upload->uploadFiles();
                $filenames = $upload->getFilesNames();

                //`id`, `bannerName`, `bannerUrl`, `status`, `createdBy`, `CreatedDate`

                include './models/Awebarts.php';
                include './models/Add.php';
                $tablename = 'banners';

                for ($i = 0; $i < count($filenames); $i++) {
                    $fileNo{$i}['bannerName'] = $filenames[$i];
                    $fileNo{$i}['bannerUrl'] = $uploadsDirecotry . $filenames[$i];
                    $fileNo{$i}['status'] = 1;
                    $fileNo{$i}['createdBy'] = $_SESSION['username'];

                    $cxn = new Add($fileNo{$i}, $tablename);
                }
            } catch (Exception $exc) {
                $exc->getMessage();
            }
        }
    }
} else {
    // add new banner view 
    include 'veiws/addNewFile.php';

    // display exist banners    
    $tablename = "banners";

    $displaybanner = new Display($tablename);
    $BannerDataDisplay = $displaybanner->getAllData();

    include './veiws/displayBanners.php';
}
?>
