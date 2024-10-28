#!/usr/bin/env bash
ddev composer remove --dev drupal/core-dev
ddev composer remove mglaman/composer-drupal-lenient
ddev composer require drupal/automatic_updates:^3.1.3
ddev drush en -y project_browser package_manager
ddev drush en -y navigation
ddev drush cset -y package_manager.settings include_unknown_files_in_project_root true
ddev drush cset -y project_browser.admin_settings allow_ui_install true
ddev drush cset -y --input-format=yaml package_manager.settings additional_trusted_composer_plugins \[tbachert/spi\]
ddev drush cr
