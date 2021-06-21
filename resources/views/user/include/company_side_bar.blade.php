<div class="scrollbar-sidebar">
    <div class="app-sidebar__inner">
        <ul class="vertical-nav-menu">
            <li>
                <a class="@if(Route::currentRouteName()=='company.dashboard')  @endif" href="{{route('welcome')}}">
                    <i class="metismenu-icon pe-7s-home"></i>
                    Homepage
                </a>
            </li>
            <li>
                <a class="@if(Route::currentRouteName()=='company.dashboard') mm-active  @endif" href="{{route('company.dashboard')}}">
                    <i class="metismenu-icon pe-7s-map"></i>
                    Dashboard
                </a>
            </li>
            <li>
                <a class="@if(Route::currentRouteName()=='user.client.dashboard') mm-active  @endif" href="{{route('user.client.dashboard')}}">
                    <i class="metismenu-icon pe-7s-user"></i>
                    Company Profile
                </a>
            </li>
            <li>
                <a class="@if(Route::currentRouteName()=='user.client.job.post') mm-active  @endif" href="{{route('user.client.job.post')}}">
                    <i class="metismenu-icon pe-7s-next-2">
                    </i>Post a Job
                </a>
            </li>
            <li>
                <a class="@if(Route::currentRouteName()=='user.client.job.create') mm-active  @endif" href="{{route('user.client.job.create')}}">
                    <i class="metismenu-icon pe-7s-settings">
                    </i>Recruiting Services
                </a>
            </li>
            <li>
                <a class="@if(Route::currentRouteName()=='company.recruitment') mm-active  @endif" href="{{route('company.recruitment')}}">
                    <i class="metismenu-icon pe-7s-id">
                    </i>Active Recruitments
                </a>
            </li>
            <li>
                <a class="@if(Route::currentRouteName()=='user.client.view.job.active') mm-active  @endif" href="{{route('user.client.view.job.active')}}">
                    <i class="metismenu-icon pe-7s-portfolio">
                    </i>Active Jobs
                </a>
            </li>
            <li>
                <a class="@if(Route::currentRouteName()=='user.client.view.job.expired') mm-active  @endif" href="{{route('user.client.view.job.expired')}}">
                    <i class="metismenu-icon pe-7s-shield">
                    </i>Inactive Jobs
                </a>
            </li>
            <li>
                <a  href="javascript:void(0)">
                    <i class="metismenu-icon pe-7s-cash">
                    </i>Subscriptions & Payments
                </a>
            </li>
            <li>
                <a class="@if(Route::currentRouteName()=='user.client.change-password') mm-active  @endif" href="{{route('user.client.change-password')}}">
                    <i class="metismenu-icon pe-7s-lock"></i>
                    Change Password
                </a>
            </li>
        </ul>
    </div>
</div>
