<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\DataLayer;

class ProfileController extends Controller
{
    public function deleteProfile()
    {
        $dl = new DataLayer();
        $dl->removeWatchlist();
        $dl->removeReviews();
        $dl->removeUser();
        return redirect()->route('index')->with('message', 'Il tuo profilo è stato eliminato');;
    }
}
