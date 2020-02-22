# TGVmaxPlanner

[![Build Status](https://travis-ci.org/olekscode/TGVmaxPlanner.svg?branch=master)](https://travis-ci.org/olekscode/TGVmaxPlanner)
[![Build status](https://ci.appveyor.com/api/projects/status/01fqf5a1xifct9re?svg=true)](https://ci.appveyor.com/project/olekscode/tgvmaxplanner)
[![Coverage Status](https://coveralls.io/repos/github/olekscode/TGVmaxPlanner/badge.svg?branch=master)](https://coveralls.io/github/olekscode/TGVmaxPlanner?branch=master)
[![License](https://img.shields.io/badge/license-MIT-blue.svg)](https://raw.githubusercontent.com/olekscode/TGVmaxPlanner/master/LICENSE)

A Planner of TGV max Trips based on SNCF API.

## How to install it?

To install `TGVmaxPlanner`, go to the Playground (Ctrl+OW) in your [Pharo](https://pharo.org/) image and execute the following Metacello script (select it and press Do-it button or Ctrl+D):

```Smalltalk
Metacello new
  baseline: 'TGVmaxPlanner';
  repository: 'github://olekscode/TGVmaxPlanner/src';
  load.
```

## How to depend on it?

If you want to add a dependency on `TGVmaxPlanner` to your project, include the following lines into your baseline method:

```Smalltalk
spec
  baseline: 'TGVmaxPlanner'
  with: [ spec repository: 'github://olekscode/TGVmaxPlanner/src' ].
```

If you are new to baselines and Metacello, check out the [Baselines](https://github.com/pharo-open-documentation/pharo-wiki/blob/master/General/Baselines.md) tutorial on Pharo Wiki.

## How to use it?

...
