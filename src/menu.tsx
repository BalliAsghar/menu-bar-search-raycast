import { Action, ActionPanel, List, getFrontmostApplication } from "@raycast/api";
import { useMenuBar } from "./useCachedMenuBar";
import { MenuBar } from "./types";
import { clickMenuBarOption, Settings } from "./utils";
import { useEffect, useState } from "react";
import React from "react";

interface MenuProps {}
Settings("showKeyboardShortcuts");
function Menu(_props: MenuProps) {
  const [app, setApp] = useState<string>("");
  const menuBar = useMenuBar(app);

  useEffect(() => {
    async function getFrontmostApp() {
      const frontmostApp = await getFrontmostApplication();
      setApp(frontmostApp?.name);
    }
    getFrontmostApp();
  }, []);

  return (
    <List isLoading={!app} searchBarPlaceholder="Filter menu items by name..." navigationTitle={app}>
      {menuBar.map((menu: MenuBar) => {
        const { title, subtitle, icon, shortcut, arg } = menu;

        return (
          <List.Item
            title={title}
            subtitle={subtitle}
            key={arg}
            icon={{ fileIcon: icon }}
            accessories={
              Settings("showKeyboardShortcuts") ? [{ text: shortcut, tooltip: "Keyboard Shortcut" }] : undefined
            }
            actions={
              <ActionPanel>
                <Action title="Click" onAction={async () => await clickMenuBarOption(arg)} />
              </ActionPanel>
            }
          />
        );
      })}
    </List>
  );
}

export default React.memo(Menu);
