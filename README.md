<h1>OneLink Themes</h1>
<h3>OneLink themes to customize your personal page.</h3>

<br>

#### File tree:
<pre>
.
└── your-theme/
    ├── animations.css
    ├── brands.css
    ├── config.php
    ├── preview.png
    ├── readme.md
    ├── share.button.css
    ├── skeleton-auto.css
    └── extra/
        ├── custom-body-end.blade.php
        ├── custom-body.blade.php
        └── custom-head.blade.php
			├── custom-assets/
			└── custom-icons/
</pre>

<br>

<a name="0"></a>
## 0. Start with the template theme
You can find the theme files for the default theme [here](https://github.com/npaymelabs/npayme-onelink-themes/tree/main/onelink-default-theme).

<br>

<a name="1"></a>
## 1. Edit the Code

**Note:** Before committing your new theme to this theme repository, edit the readme.md to fit your created theme. Make sure to include all additional assets used to create your custom CSS.

Make sure to include a preview image of your theme. This preview image should show both dark and light mode, if applicable. You may add custom text or descriptions to this image, just make it an adequate representation of your theme. Please keep this image in a `16:9` aspect ratio and don't scale it higher than `1920x1080p`. Make sure to use a PNG as the file type.

<br>

### 1.1 Edit the CSS

Customize the files to fit your idea.

Default theme uses `prefers-color-scheme` to switch between dark and light mode. You can either keep this format and adjust the colors to your liking, or set one color theme for both modes.

(for CSS only themes this is the only step you'll need.)

<br>

### 1.2 Edit the config

The theme config allows you to configure how OneLink should treat your theme.
All settings are explained with comments in the config file.

If you edited your buttons in the previous step, your theme may not be compatible with custom buttons created by the Button Editor.
You can disable the use of custom buttons in the config.

If you want to use custom code like HTML, JavaScript or custom icons in your theme you can enable this here as well.

<br>

### 1.3 Adding custom code

The theme system allows you to inject custom code at three places on your page: in the head, body and at the end of the body tag.

You can add your custom code with 3 individual files in the "extra" folder with the files:

<pre>
custom-body-end.blade.php
custom-body.blade.php
custom-head.blade.php
</pre>

Here you can write your code in the following languages: Blade, PHP, HTML, JS and CSS.

Further instructions are provided in the individual files as comments.

<br>

### 1.4 Adding custom assets

The theme system gives you the option to add custom assets to your page.

You will have to declare these additions in the file custom-head.blade.php (others work too if required).

Custom assets are stored in the 'custom-assets' directory found inside the 'extra' folder.
Custom assets can be any file you would like to use in your theme.
For example: JS, CSS or image files.

You can load these custom assets with a built-in function, 'themeAsset()'.
Add the file you want to add to your 'custom-assets' folder, and include the name with the file extension in the function.

For this the file and custom code have to be enabled in the config.php

<details>
<pre>

Down below, you can find a few examples using this function:

<link rel="stylesheet" href="{{themeAsset('your.css')}}">
<script src="{{themeAsset('your.js')}}"></script>
<style>body{background-image: url({{themeAsset('your.png')}});}</style>

</pre>
</details>

<br>

### 1.5 Add custom icons

You can download all the icons used for the buttons from [here](https://github.com/npaymelabs/npayme-onelink-themes/tree/main/icons).

For custom icons to apply you have to enable them in the config first.

Include your edited icons in the "custom-icons" folder while keeping the original file names.

You can use other file types like PNG, JPG, etc. by defining a custom file extension in the config.