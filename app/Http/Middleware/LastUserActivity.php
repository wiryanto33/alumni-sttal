<?php

namespace App\Http\Middleware;

use App\Models\User;
use Auth;
use Cache;
use Closure;

class LastUserActivity
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure(\Illuminate\Http\Request): (\Illuminate\Http\Response|\Illuminate\Http\RedirectResponse)  $next
     * @return \Illuminate\Http\Response|\Illuminate\Http\RedirectResponse
     */

    public function handle($request, Closure $next)
    {
        if (Auth::check()) {
            $user = Auth::user();
            $cacheKey = 'user-last-seen-' . $user->id;

            // Update last_seen only once every 5 minutes using cache
            if (!Cache::has($cacheKey)) {
                User::where('id', $user->id)->update(['last_seen' => now()]);
                Cache::put($cacheKey, true, now()->addMinutes(5));
            }
        }
        return $next($request);
    }
}
