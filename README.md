# YeetScript

> It's just TypeScript but `yeet` can be used as `throw`

<p align="center">

<img alt="Yeet or be Yeeted" src="https://github.com/mikelsr/YeetScript/raw/master/res/yeet.png">

</p>

## Example

``` ts
// Example of a valid YeetScript file

var can = ""
try {
    if (!can) {
        yeet new Error("this b**ch empty!")
    }
} catch (err) {
    console.log(err.message)
}

```

## Requirements

* npm
* gulp

## Building

``` bash
./build.sh
```

### Cleanup

The residual `TypeScript` folder can be deleted after a successful build.

## Running

After the successfully running `build.sh`, you can create a `.js` file from a
YeetScript file with the `.ts` extension by running:

``` bash
node out/ysc.js ${your_yeetscript_file}.ts
```

To run the generated `.js` file:

``` shell
node ${your_yeetscript_file}.js
```
