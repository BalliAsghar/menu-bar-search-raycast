import { Action, ActionPanel, Icon, List, getFrontmostApplication } from "@raycast/api";
import { useMenuBar } from "./useCachedMenuBar";
import { MenuBar } from "./types";
import { clickMenuBarOption, Settings } from "./utils";
import { useEffect, useState } from "react";

export default function Menu() {
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
      {menuBar.map((menu: MenuBar) => (
        <List.Item
          title={menu.title}
          subtitle={menu.subtitle}
          key={menu.arg}
          icon={{ fileIcon: menu.icon }}
          actions={
            <ActionPanel>
              <Action title="Click" onAction={async () => await clickMenuBarOption(menu.arg)} />
            </ActionPanel>
          }
          {...(Settings("showKeyboardShortcuts") && {
            ...(menu.shortcut && {
              accessoryIcon: Icon.Keyboard,
              accessoryTitle: menu.shortcut,
            }),
          })}
        ></List.Item>
      ))}
    </List>
  );
}
