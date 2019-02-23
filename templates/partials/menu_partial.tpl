<ul class="header-inner">
        <li id="menu-trigger" data-trigger="#sidebar" <!-- IF config.menuInHeader -->class="menu-header"<!-- ENDIF config.menuInHeader -->>
            <div class="line-wrap">
                <div class="line top"></div>
                <div class="line center"></div>
                <div class="line bottom"></div>
            </div>
        </li>
    	<li class="logo <!-- IF config.menuInHeader -->menu-in-header<!-- ENDIF config.menuInHeader -->">
			<!-- IF brand:logo -->
            <a href="<!-- IF brand:logo:url -->{brand:logo:url}<!-- ELSE -->{relative_path}/<!-- ENDIF brand:logo:url -->">
                <img alt="{brand:logo:alt}" class="{brand:logo:display} forum-logo" src="{brand:logo}" />
            </a>
            <!-- ENDIF brand:logo -->

            <!-- IF config.showSiteTitle -->
			<a class="title" href="<!-- IF title:url -->{title:url}<!-- ELSE -->{relative_path}/<!-- ENDIF title:url -->">
				{title}
			</a>
			<!-- ENDIF config.showSiteTitle -->
        </li>

        <!-- IF config.menuInHeader -->
        <li class="hidden-xs">
            <ul class="header-menu" id="main-nav">
                <!-- BEGIN navigation -->
                <!-- IF function.displayMenuItem, @index -->
                <li class="{navigation.class}">
                    <a class="navigation-link" href="{navigation.route}" title="{navigation.title}" <!-- IF navigation.id -->id="{navigation.id}"<!-- ENDIF navigation.id --><!-- IF navigation.properties.targetBlank --> target="_blank"<!-- ENDIF navigation.properties.targetBlank -->>
                        <!-- IF navigation.iconClass -->
                        <i class="fa fa-fw {navigation.iconClass}"></i>
                        <!-- ENDIF navigation.iconClass -->
                    </a>
                </li>
                <!-- ENDIF function.displayMenuItem -->
                <!-- END navigation -->
            </ul>
        </li>
        <!-- ENDIF config.menuInHeader -->

        <li class="pull-right">
        <ul class="top-menu">
            <li class="nav navbar-nav pagination-block visible-lg visible-md">
                <div class="dropdown">
                    <i class="fa fa-angle-double-up pointer fa-fw pagetop"></i>
                    <i class="fa fa-angle-up pointer fa-fw pageup"></i>

                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        <span class="pagination-text"></span>
                    </a>

                    <i class="fa fa-angle-down pointer fa-fw pagedown"></i>
                    <i class="fa fa-angle-double-down pointer fa-fw pagebottom"></i>

                    <div class="progress-container">
                        <div class="progress-bar"></div>
                    </div>

                    <ul class="dropdown-menu" role="menu">
                        <li>
                            <input type="text" class="form-control" id="indexInput" placeholder="[[global:pagination.enter_index]]">
                        </li>
                    </ul>
                </div>
            </li>

            <li>
                <a href="#" id="reconnect" class="hide" title="Connection to {title} has been lost, attempting to reconnect...">
                    <i class="fa fa-check"></i>
                </a>
            </li>
            <!-- IF config.searchEnabled -->
            <li>
                <form id="search-form" class="hidden-xs" role="search" method="GET">
                    <div class="hidden" id="search-fields">
                        <div class="form-group">
                            <div class="fg-line">
                                <input type="text" class="form-control" placeholder="[[global:search]]" name="query" value="">
                            </div>
                        </div>
                        <button type="submit" class="btn btn-default hide">[[global:search]]</button>
                    </div>
                    <button id="search-button" type="button" class="btn btn-link"><i class="fa fa-search fa-fw"></i></button>
                </form>
            </li>
            <!-- ENDIF config.searchEnabled -->

			<!-- IF config.loggedIn -->
            <li class="notifications dropdown" component="notifications">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" id="notif_dropdown">
                    <i class="fa fa-fw fa-bell-o" component="notifications/icon" data-content="0"></i>
                </a>
                <div class="dropdown-menu dropdown-menu-lg pull-right">
                    <div class="listview">
                        <div class="lv-header">
                            [[notifications:title]]
                        </div>
                        <div class="lv-body c-overflow" id="notif-list" component="notifications/list">
                            <a href="#" class="lv-item"><i class="fa fa-refresh fa-spin"></i> [[global:notifications.loading]]</a>
                        </div>
                        <div class="lv-footer">
                        <a href="#" class="mark-all-read">[[notifications:mark_all_read]]</a>
                        <hr />
                        <a href="{relative_path}/notifications">[[notifications:see_all]]</a>
                        </div>
                    </div>
                </div>
            </li>

            <!-- IF !config.disableChat -->
            <li class="chats dropdown">
                <a class="dropdown-toggle" data-toggle="dropdown" href="#" id="chat_dropdown" component="chat/dropdown">
                    <i component="chat/icon" class="fa fa-comment-o fa-fw"></i>
                </a>
                <div class="dropdown-menu dropdown-menu-md pull-right" aria-labelledby="chat_dropdown">
                    <div class="listview">
                        <div class="lv-body c-overflow chat-list" component="chat/list">
                            <div class="loading-text">
                                <i class="fa fa-refresh fa-spin"></i> [[global:chats.loading]]
                            </div>
                        </div>
                        <div class="lv-footer">
                            <a href="#" class="mark-all-read" component="chats/mark-all-read">[[modules:chat.mark_all_read]]</a>
                            <hr />
                            <a href="{relative_path}/user/{user.userslug}/chats">[[modules:chat.see_all]]</a>
                        </div>
                    </div>
                </div>
            </li>
            <!-- ENDIF !config.disableChat -->

            <li id="user_label" class="dropdown">
                <a class="dropdown-toggle" data-toggle="dropdown" href="#" id="user_dropdown">
                    <img component="header/userpicture" src="{user.picture}" alt="{user.username}" class="user-picture" id="user-header-picture"<!-- IF !user.picture --> style="display:none;"<!-- ENDIF !user.picture --> />
                    <div component="header/usericon" class="user-icon" style="background-color: {user.icon:bgColor};<!-- IF user.picture -->display:none;<!-- ENDIF user.picture -->">{user.icon:text}</div>
                </a>
                <ul id="user-control-list" component="header/usercontrol" class="dropdown-menu pull-right" aria-labelledby="user_dropdown">
                    <li>
                        <a component="header/profilelink" id="user-profile-link" href="{relative_path}/user/{user.userslug}">
                            <i component="user/status" class="status {user.status}"></i> <span component="header/username" id="user-header-name">{user.username}</span>
                        </a>
                    </li>
                    <li role="presentation" class="divider"></li>
                    <li>
                        <a href="#" class="user-status" data-status="online">
                            <i class="status online"></i><span> [[global:online]]</span>
                        </a>
                    </li>
                    <li>
                        <a href="#" class="user-status" data-status="away">
                            <i class="status away"></i><span> [[global:away]]</span>
                        </a>
                    </li>
                    <li>
                        <a href="#" class="user-status" data-status="dnd">
                            <i class="status dnd"></i><span> [[global:dnd]]</span>
                        </a>
                    </li>
                    <li>
                        <a href="#" class="user-status" data-status="offline">
                            <i class="status offline"></i><span> [[global:invisible]]</span>
                        </a>
                    </li>
                    <li role="presentation" class="divider"></li>
                    <li>
						<a component="header/profilelink/edit" href="{relative_path}/user/{user.userslug}/edit">
							<i class="fa fa-fw fa-edit"></i><span> [[user:edit-profile]]</span>
						</a>
					</li>
					<li>
						<a component="header/profilelink/settings" href="{relative_path}/user/{user.userslug}/settings">
							<i class="fa fa-fw fa-gear"></i><span> [[user:settings]]</span>
						</a>
					</li>

					<!-- IF showModMenu -->
					<li role="presentation" class="divider"></li>
					<li class="dropdown-header">[[pages:moderator-tools]]</li>
					<li>
						<a href="{relative_path}/flags">
							<i class="fa fa-fw fa-flag"></i> <span>[[pages:flagged-content]]</span>
						</a>
					</li>
					<li>
						<a href="{relative_path}/post-queue">
							<i class="fa fa-fw fa-list-alt"></i> <span>[[pages:post-queue]]</span>
						</a>
					</li>
					<li>
						<a href="{relative_path}/ip-blacklist">
							<i class="fa fa-fw fa-ban"></i> <span>[[pages:ip-blacklist]]</span>
						</a>
					</li>
					<!-- ENDIF showModMenu -->

					<li role="presentation" class="divider"></li>
                    <li component="user/logout">
						<form method="post" action="{relative_path}/logout" style="line-height: 1.42857em;">
							<input type="hidden" name="_csrf" value="{config.csrf_token}">
							<input type="hidden" name="noscript" value="true">
							<button style="padding-left:17px !important; color: rgb(33, 33, 33) !important;" class="btn btn-link">
								<i class="fa fa-fw fa-sign-out"></i><span style="text-transform: capitalize; font-size:13px;"> [[global:logout]]</span>
							</button>
						</form>
					</li>                    
                </ul>
            </li>
            <!-- ELSE -->
            <!-- IF allowRegistration -->
            <li class="hidden-xs">
                <a href="{relative_path}/register">
					<span>[[global:register]]</span>
				</a>
            </li>
            <!-- ENDIF allowRegistration -->
            <li class="hidden-xs">
            	<a href="{relative_path}/login">
					<span>[[global:login]]</span>
				</a>
            </li>
            <!-- ENDIF config.loggedIn -->
            </ul>
        </li>
    </ul>