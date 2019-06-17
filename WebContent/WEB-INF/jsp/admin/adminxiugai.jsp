ternal.componentcore.JavaEEBinaryComponentHelper.getJavaEEQuickPeek(JavaEEBinaryComponentHelper.java:98)
	at org.eclipse.jst.j2ee.project.JavaEEProjectUtilities.getJ2EEComponentType(JavaEEProjectUtilities.java:273)
	at org.eclipse.jst.j2ee.internal.common.exportmodel.JEEHeirarchyExportParticipant.isChildModule(JEEHeirarchyExportParticipant.java:81)
	at org.eclipse.wst.common.componentcore.internal.flat.GlobalHeirarchyParticipant.isChildModule(GlobalHeirarchyParticipant.java:52)
	at org.eclipse.wst.common.componentcore.internal.flat.FlatVirtualComponent.shouldAddComponentFile(FlatVirtualComponent.java:284)
	at org.eclipse.wst.common.componentcore.internal.flat.VirtualComponentFlattenUtility.addFile(VirtualComponentFlattenUtility.java:123)
	at org.eclipse.wst.common.componentcore.internal.flat.VirtualComponentFlattenUtility.addMembersInternal(VirtualComponentFlattenUtility.java:99)
	at org.eclipse.wst.common.componentcore.internal.flat.VirtualComponentFlattenUtility.addMembersInternal(VirtualComponentFlattenUtility.java:96)
	at org.eclipse.wst.common.componentcore.internal.flat.VirtualComponentFlattenUtility.addMembersInternal(VirtualComponentFlattenUtility.java:96)
	at org.eclipse.wst.common.componentcore.internal.flat.VirtualComponentFlattenUtility.addMembers(VirtualComponentFlattenUtility.java:51)
	at org.eclipse.wst.common.componentcore.internal.flat.FlatVirtualComponent.treeWalk(FlatVirtualComponent.java:230)
	at org.eclipse.wst.common.componentcore.internal.flat.FlatVirtualComponent.cacheResources(FlatVirtualComponent.java:188)
	at org.eclipse.wst.common.componentcore.internal.flat.FlatVirtualComponent.fetchResources(FlatVirtualComponent.java:118)
	at org.eclipse.wst.web.internal.deployables.FlatComponentDeployable.members(FlatComponentDeployable.java:234)
	at org.eclipse.jst.j2ee.internal.deployables.J2EEFlexProjDeployable.members(J2EEFlexProjDeployable.java:272)
	at org.eclipse.wst.server.core.internal.ModulePublishInfo.hasDelta(ModulePublishInfo.java:435)
	at org.eclipse.wst.server.core.internal.ServerPublishInfo.hasDelta(ServerPublishInfo.java:440)
	at org.eclipse.wst.server.core.internal.Server.hasPublishedResourceDelta(Server.java:1600)
	at org.eclipse.wst.server.core.internal.Server$ResourceChangeJob$1.visit(Server.java:217)
	at org.eclipse.wst.server.core.internal.Server.visitModule(Server.java:3065)
	at org.eclipse.wst.server.core.internal.Server.visit(Server.java:3049)
	at org.eclipse.wst.server.core.internal.Server$ResourceChangeJob.run(Server.java:233)
	at org.eclipse.core.internal.jobs.Worker.run(Worker.java:63)

!ENTRY org.eclipse.jst.j2ee 4 0 2019-06-17 22:06:49.548
!MESSAGE F:\workbase\tkzSalary\WebContent\WEB-INF\lib\commons-logging-1.2.jar
!STACK 0
java.io.FileNotFoundException: F:\workbase\tkzSalary\WebContent\WEB-INF\lib\commons-logging-1.2.jar
	at org.eclipse.jst.j2ee.internal.componentcore.JavaEEBinaryComponentLoadAdapter.physicallyOpen(JavaEEBinaryComponentLoadAdapter.java:105)
	at org.eclipse.jst.j2ee.internal.componentcore.JavaEEBinaryComponentHelper