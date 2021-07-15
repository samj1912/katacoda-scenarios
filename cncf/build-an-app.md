# Build an app

Building an app using Cloud Native Buildpacks is as easy as `1`, `2`, `3`...

### 1. Select a builder

To [build][build] an app you must first decide which [builder][builder] you're going to use. A builder
includes the [buildpacks][buildpack] that will be used as well as the environment for building your
app.

When using `pack`, you can run `pack builder suggest` for a list of suggested builders.

```bash
pack builder suggest
```{{execute}}

### 2. Build your app

Now that you've decided on what builder to use, we can build our app. For this example we'll use the [paketo samples][paketo-samples] repository for simplicity.

1. Check that the samples repo exists
```
ls samples
```{{execute}}

2. Build the app
```
pack build sample-app --path samples/go/mod
```{{execute}}

### 3. Run it

```
docker run --rm -p 8080:8080 sample-app
```{{execute}}

**Congratulations!**

Now hit open the port `8080` of your host in your favorite browser and take a minute to enjoy the view.

On Katacoda you can do this by [clicking here](https://[[HOST_SUBDOMAIN]]-8080-[[KATACODA_HOST]].environments.katacoda.com)

[build]:  https://buildpacks.io/docs/concepts/operations/build
[builder]:  https://buildpacks.io/docs/concepts/components/builder
[buildpack]:  https://buildpacks.io/docs/concepts/components/buildpack
[paketo-samples]: https://github.com/paketo-buildpacks/samples