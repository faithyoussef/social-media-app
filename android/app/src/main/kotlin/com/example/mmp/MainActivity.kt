package com.example.mmp

import android.content.pm.PackageManager
import android.os.Build
import android.os.Parcel
import android.os.Parcelable
import io.flutter.embedding.android.FlutterActivity

class MainActivity() : FlutterActivity(), Parcelable {
    constructor(parcel: Parcel) : this()

    override fun writeToParcel(parcel: Parcel, flags: Int) {

    }

    override fun describeContents(): Int {
        return 0
    }

    companion object CREATOR : Parcelable.Creator<MainActivity> {
        override fun createFromParcel(parcel: Parcel): MainActivity {
            return MainActivity(parcel)
        }

        override fun newArray(size: Int): Array<MainActivity?> {
            return arrayOfNulls(size)
        }
    }



}
