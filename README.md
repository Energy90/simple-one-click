# simple-one-click

The **Simple One-Click Panel** is a foundational MetaTrader 5 (MT5) script designed to demonstrate how to create a custom graphical user interface (GUI) directly on your chart. While this particular version doesn't execute trades, it provides a clear template for developing interactive trading panels with immediate visual feedback. It's an excellent starting point for anyone looking to build custom trading interfaces in MT5.

---
### Features

This script displays a custom graphical panel on your chart, featuring:
* **Trade Buttons:** Two interactive buttons, clearly labeled "Buy" and "Sell," simulating trade execution points.
* **Parameter Labels:** Three distinct text labels for "Stop Loss," "Take Profit," and "Lot Size," making the purpose of the input fields clear.
* **Editable Input Fields:** Corresponding edit fields for "Stop Loss," "Take Profit," and "Lot Size," allowing users to input numerical values.
---
### How to Use
Follow these simple steps to get the Simple One-Click Panel up and running on your MetaTrader 5 terminal:

1. **Download:** Get the `simple-one-click.mq5` source code file.
2. **Create Folder (Optional):** While not strictly necessary, it's good practice to create a dedicated folder for custom scripts within your MetaTrader 5 `MQL5` directory (e.g., `Scripts/Custom`).
3. **Place File:** Move the downloaded `simple-one-click.mq5` file into this new folder (or directly into `MQL5/Scripts`).
4. **Open MetaEditor:** Launch your MetaEditor (you can quickly open it from MT5 by pressing F4).
5. **Compile:**

    * In MetaEditor, navigate to the folder where you placed the `.mq5` file.

    * Double-click (or drag and drop) the `simple-one-click.mq5` file to open it.

    * Click the Compile button (or press F7) in the toolbar. This will generate an executable `.ex5` file in the same directory. Make sure there are no compilation errors.

6. **Refresh Scripts:** Go back to your MetaTrader 5 terminal. In the Navigator panel (usually on the left side), right-click on "Scripts" and select "Refresh".

7. **Attach to Chart:**

    * Expand the "Scripts" list in the Navigator panel.

    * Locate **"Simple One-Click Panel"** (it will be listed under your custom folder if you created one, or directly under "Scripts").

    * Drag and drop the Simple One-Click Panel script onto any open chart.
    ---

### Expected Output
Once successfully attached to your chart, you will see the custom panel displayed in the top-right corner, similar to the image below. This panel is purely visual in this version, showcasing the layout for future interactive development.

[click here](simple-one-click.png)