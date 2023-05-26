import "@/styles/global.css";
import GlassPane from "@/components/GlassPane";
import React from "react";
import Sidebar from "@/components/Sidebar";

const DashboardRootLayout = ({ children }) => {
  return (
    <html lang="en">
      <head />
      <body className="h-screen w-screen rainbow-mesh p-6">
        <GlassPane className="w-full h-full flex items-center">
          <Sidebar />
          {children}
        </GlassPane>
        <div id="modal"></div>
      </body>
    </html>
  );
};

export default DashboardRootLayout;
