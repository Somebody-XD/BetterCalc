/*
 * SPDX-License-Identifier: GPL-3.0-or-later
 * SPDX-FileCopyrightText: 2024 Josiah Moore <jojomoore04@gmail.com>
 */
 
 public class MyApp : Gtk.Application {
    public MyApp () {
        Object (
            application_id: "com.github.Somebody-XD.BetterCalc",
            flags: ApplicationFlags.FLAGS_NONE
        );
    }

    protected override void activate () {
        var label = new Gtk.Label ("BetterCalc");
   
        var main_window = new Gtk.ApplicationWindow (this) {
            child = label,
            default_height = 300,
            default_width = 300,
            title = "BetterCalc (MODE: CALC)"
        };
        main_window.present ();
    }

    public static int main (string[] args) {
        return new MyApp ().run (args);
    }
}

