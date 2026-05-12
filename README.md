# dart_build_issue_4916

Project to test issues mentioned in [#4916](https://github.com/dart-lang/build/issues/4916).

## Clean
To clean `.dart_tool` run `./reset.sh`.

## Control sample
To generate control sample one may run
`./reset.sh && ./build_runner.sh`

## Issue #1. Root module contains empty or no build.yaml, submodule contains build.yaml
```zsh
./reset.sh && dart run build_runner build --workspace -c 1
```
One may observe changes in packages `a`, that has rules specified with `global_options`. There are no changes in module `c`, which contains rules specified with `targets.$default.builders`.

### Result
Not an issue. Works as expected. Modules have to use `targets.$default.builders` if possible. Lack of API to set `runs_before` was reported.


## Issue #2. Root module contains build.yaml, one submodule contains build.yaml, another does not 
```zsh
./reset.sh && dart run build_runner build --workspace -c 2
```
One may observe changes in package `a`, `b`, and `c`.  
Currently, there is no way to override root `build.yaml` with `global_options`.


## Issue #3. Root module contains build.yaml with targets.$default rules, one submodule contains build.yaml, another does not 
```zsh
./reset.sh && dart run build_runner build --workspace -c 3
```
One may observe changes in package `a`, but not related to root `build.yaml` or package's `build.yaml`.

## Issue #4. Root module ignores runs_before defined for it
Once running
```zsh
./reset.sh && dart run build_runner build -c 2 # Contains runs_before
```
Console will contain
```
1s retrofit_generator on 1 input: 1 no-op
0s source_gen:combining_builder on 1 input: 1 no-op
3s dart_mappable_builder on 2 inputs: 1 skipped, 1 no-op; spent 2s analyzing        
```
Expected order is (works for package `a`, that contains same `runs_before`):
```
1s dart_mappable_builder on 2 inputs: 1 output, 1 no-op
0s retrofit_generator on 6 inputs: 3 skipped, 1 output, 2 no-op
0s source_gen:combining_builder on 6 inputs: 3 skipped, 1 output, 2 no-op
```
