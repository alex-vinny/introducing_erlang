{application, simple_app,
[{description, "Simple Package Application"},
{vsn, "0.0.1"},
{modules, [simple_business, simple_server, simple_supervisor, simple_app]},
{registered, [simple_server, simple_supervisor]},
{applications, [kernel, stdlib]},
{mod, {simple_app, []} }]}.