update tv_shows 
set location = replace(location, 'Z:\Drobo\TV Shows', '/drobo/TV Shows/');

update tv_shows
set location = replace(location, '\', '/');

update tv_episodes
set location = replace(location, 'Z:\Drobo\TV Shows', '/drobo/TV Shows/');

update tv_episodes
set location = replace(location, '\', '/');
