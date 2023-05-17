import { Action, ActionPanel, List, getFrontmostApplication } from "@raycast/api";
import { useMenuBar } from "./useCachedMenuBar";
import { MenuBar } from "./types";
import { clickMenuBarOption } from "./utils";
import { useEffect, useState } from "react";

export default function Menu() {
  const [app, setApp] = useState<string>("");
  const menuBar = useMenuBar(app);

  useEffect(() => {
    async function getFrontmostApp() {
      const frontmostApp = await getFrontmostApplication();
      console.log(frontmostApp);
      setApp(frontmostApp?.name);
    }
    getFrontmostApp();
  }, []);

  return (
    <List isLoading={!app} searchBarPlaceholder="Filter menu items by name...">
      {menuBar.map((item: MenuBar) => (
        <List.Item
          title={item.title}
          subtitle={item.subtitle}
          key={item.arg}
          icon={{ fileIcon: item.icon }}
          actions={
            <ActionPanel>
              <Action title="Click" onAction={async () => await clickMenuBarOption(item.arg)} />
            </ActionPanel>
          }
        ></List.Item>
      ))}
    </List>
  );
}
