## X-Ray

**Overview:** `x-ray` is a user-interface meant to serve as a replacement for modern day terminals (e.g. Linux's *terminal*, Mac's *xterm*, Window's *command prompt*) and the associated command-line interfaces or shell scripts/interpreters currently packaged with them - leveraging the power of the modern web. Sort of like `tmux` re-imagined in a web browser.

In typical user-interface fashion, `x-ray` is based off the **Model-View-Controller or MVC** pattern consisting of the following components:
* D3.js (view) - displays and adapts interface elements according to a particular user view/query
* GraphQL (controller) - processes users' data query/modification requests and provides computed data response to view
* **** (model) - technically should be able to support both NoSQL (e.g. elasticsearch, mongoDB) and SQL (postgres, sql) datastores. The support of (non)nullable types by GraphQL may actually be better suited for NoSQL backends.

```bash
# Browser view
*********************************************
*                     |                     *
* *div/view plugin-A  |  *div/view plugin-B *
*                     |                     *
*********************************************
*                     |                     *
* *div/view plugin-C  |  *div/view plugin-D *
*                     |                     *
*********************************************

# div/view plugins = mapping between D3.js object display/behavior <>=> system or application GraphQL query/mutation/subscriptions objects and data resolvers (e.g. datastores or ideally WASM modules for scripts and compiled programs written in a developer's choosing)
```

## Think a visualization like below as a file explorer VS. `ls` ([link](https://observablehq.com/@d3/zoomable-sunburst))
![Screenshot from 2020-08-31 21-12-04](https://user-images.githubusercontent.com/49376577/91784897-005d5e80-ebd2-11ea-83e1-1b0dffa47d67.png)
