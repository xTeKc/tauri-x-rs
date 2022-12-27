#![cfg_attr(
    all(not(debug_assertions), target_os = "windows"),
    windows_subsystem = "windows"
  )]
  
  use demo::AppBuilder;
  
  pub fn main() {
    //app::AppBuilder::new().run();
    AppBuilder::new().run();
  }
  