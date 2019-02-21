<div id="header-menu">
<div class="material-load-bar">
    <div class="material-bar"></div>
    <div class="material-bar"></div>
    <div class="material-bar"></div>
</div>
<header id="header" class="container" component="navbar">
    <!-- IMPORT partials/menu_partial.tpl -->
</header>
</div>
<section id="main" <!-- IF menuInHeader -->class="visible-xs"<!-- ENDIF menuInHeader -->>
    <aside id="sidebar">
        <div class="sidebar-inner">
            <div class="si-inner">
                <ul class="main-menu">
                    <li id="toggle-width" class="hidden-xs">
                        <div class="toggle-switch">
                            <input id="tw-switch" type="checkbox" hidden="hidden">
                            <label for="tw-switch" class="ts-helper"></label>
                        </div>
                    </li>
                    <!-- IF !config.loggedIn -->
                    <!-- IF allowRegistration -->
                    <li class="visible-xs">
                        <a href="{relative_path}/register">
                            <i class="fa fa-pencil fa-fw"></i> [[global:register]]
                        </a>
                    </li>
                    <!-- ENDIF allowRegistration -->
                    <li class="visible-xs">
                        <a href="{relative_path}/login">
                            <i class="fa fa-sign-in fa-fw"></i> [[global:login]]
                        </a>
                    </li>
                    <!-- ENDIF !config.loggedIn -->

                    <li class="visible-xs">
                        <a href="{relative_path}/search">
                            <i class="fa fa-search fa-fw"></i> [[global:search]]
                        </a>
                    </li>

					<!-- BEGIN navigation -->
					<!-- IF function.displayMenuItem, @index -->
					<li class="{navigation.class}">
						<a class="navigation-link" href="{navigation.route}" title="{navigation.title}" <!-- IF navigation.id -->id="{navigation.id}"<!-- ENDIF navigation.id --><!-- IF navigation.properties.targetBlank --> target="_blank"<!-- ENDIF navigation.properties.targetBlank -->>
							<!-- IF navigation.iconClass -->
							<i class="fa fa-fw {navigation.iconClass}"></i>
							<!-- ENDIF navigation.iconClass -->
							<!-- IF navigation.text -->
							{navigation.text}
							<!-- ENDIF navigation.text -->
						</a>
					</li>
					<!-- ENDIF function.displayMenuItem -->
					<!-- END navigation -->
                </ul>
            </div>
        </div>
    </aside>
</section>
