<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ProductImage extends Model
{
    use HasFactory;

    private static $productImage, $image, $directory, $imageName, $imageUrl, $productImages;

    public static function newProductImage($images, $id)
    {
        foreach ($images as $image) {
            self::$imageName = $image->getClientOriginalName();
            self::$directory = 'uploads/product-other-images/';
            $image->move(self::$directory, self::$imageName);
            self::$imageUrl = self::$directory . self::$imageName;

            self::$productImage = new ProductImage();
            self::$productImage->product_id = $id;
            self::$productImage->image = self::$imageUrl;
            self::$productImage->save();
        }

    }

    public static function updateProductImage($images, $id)
    {
        self::$productImages = ProductImage::where('product_id', $id)->get();
        foreach (self::$productImages as $productImage) {
            if (file_exists($productImage->image)) {
                unlink($productImage->image);
            }
            $productImage->delete();
        }
        self::newProductImage($images, $id);

    }

}
