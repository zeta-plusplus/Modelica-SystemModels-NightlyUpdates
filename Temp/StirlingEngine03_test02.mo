within SystemModels.Temp;

model StirlingEngine03_test02
  extends Modelica.Icons.Example;
  //-----
  package engineAir = Modelica.Media.Air.DryAirNasa;
  //package engineAir = PropulsionSystem.Media.EngineBreathingAir.DryAirMethaneMixture00;
  //redeclare package Medium = engineAir
  //-----
  inner Modelica.Fluid.System system(energyDynamics = Modelica.Fluid.Types.Dynamics.DynamicFreeInitial, m_flow_start = 1, massDynamics = Modelica.Fluid.Types.Dynamics.DynamicFreeInitial, momentumDynamics = Modelica.Fluid.Types.Dynamics.DynamicFreeInitial) annotation(
    Placement(visible = true, transformation(origin = {-90, 190}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Fluid.Machines.SweptVolume sweptVolume1(redeclare package Medium = engineAir, clearance = 0.05 * Modelica.Constants.pi / 4 * 0.1 ^ 2, nPorts = 1, pistonCrossArea = Modelica.Constants.pi / 4 * 0.1 ^ 2, s(fixed = false), use_HeatTransfer = true, use_portsData = false) annotation(
    Placement(visible = true, transformation(origin = {-70, 130}, extent = {{-10, 10}, {10, -10}}, rotation = 0)));
  Modelica.Fluid.Machines.SweptVolume sweptVolume2(redeclare package Medium = engineAir, clearance = 0.05 * Modelica.Constants.pi / 4 * 0.1 ^ 2, nPorts = 1, pistonCrossArea = Modelica.Constants.pi / 4 * 0.1 ^ 2, s(fixed = false), use_HeatTransfer = true, use_portsData = false) annotation(
    Placement(visible = true, transformation(origin = {90, 130}, extent = {{10, 10}, {-10, -10}}, rotation = -90)));
  Modelica.Fluid.Vessels.ClosedVolume volume(redeclare package Medium = engineAir, V = 0.1 * Modelica.Constants.pi / 4 * 0.1 ^ 2, nPorts = 2, use_portsData = false) annotation(
    Placement(visible = true, transformation(origin = {10, 170}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Thermal.HeatTransfer.Sources.FixedTemperature fixedTemperature2(T(displayUnit = "K") = 288.15) annotation(
    Placement(visible = true, transformation(origin = {150, 110}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalConductor1(G = 200) annotation(
    Placement(visible = true, transformation(origin = {-100, 130}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalConductor2(G = 200) annotation(
    Placement(visible = true, transformation(origin = {120, 110}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  Modelica.Fluid.Pipes.StaticPipe pipe(redeclare package Medium = engineAir, diameter = 0.05, length = 0.1) annotation(
    Placement(visible = true, transformation(origin = {-50, 160}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Fluid.Pipes.StaticPipe pipe1(redeclare package Medium = engineAir, diameter = 0.05, length = 0.1) annotation(
    Placement(visible = true, transformation(origin = {50, 160}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Thermal.HeatTransfer.Sources.PrescribedTemperature prescribedTemperature1 annotation(
    Placement(visible = true, transformation(origin = {-130, 130}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.Ramp ramp1(duration = 10, height = 800, offset = 288.15, startTime = 10) annotation(
    Placement(visible = true, transformation(origin = {-170, 130}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  inner Modelica.Mechanics.MultiBody.World world annotation(
    Placement(visible = true, transformation(origin = {-170, -210}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Joints.Revolute revolute1(n = {1, 0, 0}, useAxisFlange = true)  annotation(
    Placement(visible = true, transformation(origin = {-130, -210}, extent = {{-10, 10}, {10, -10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.BodyCylinder bodyCylinder1(r = {0.1, 0, 0})  annotation(
    Placement(visible = true, transformation(origin = {-90, -210}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.BodyBox bodyBox1(r = {0, 0.1, 0})  annotation(
    Placement(visible = true, transformation(origin = {-70, -190}, extent = {{-10, -10}, {10, 10}}, rotation = 90)));
  Modelica.Mechanics.MultiBody.Parts.BodyCylinder bodyCylinder2(r = {0.1, 0, 0})  annotation(
    Placement(visible = true, transformation(origin = {-20, -180}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.BodyBox bodyBox2(r = {0, -0.1, 0})  annotation(
    Placement(visible = true, transformation(origin = {30, -190}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation1(r = {0.05, 0, 0})  annotation(
    Placement(visible = true, transformation(origin = {-50, -180}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.BodyBox bodyBox5(r = {0, 0.2, 0})  annotation(
    Placement(visible = true, transformation(origin = {-50, -100}, extent = {{-10, -10}, {10, 10}}, rotation = 90)));
  Modelica.Mechanics.MultiBody.Joints.Revolute revolute2(n = {1, 0, 0})  annotation(
    Placement(visible = true, transformation(origin = {-50, -70}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.BodyCylinder bodyCylinder5(r = {0, 0.1, 0})  annotation(
    Placement(visible = true, transformation(origin = {-50, -40}, extent = {{10, -10}, {-10, 10}}, rotation = -90)));
  Modelica.Mechanics.MultiBody.Joints.Prismatic prismatic1(boxWidthDirection = {0, -1, 0}, n = {0, -1, 0}, useAxisFlange = true)  annotation(
    Placement(visible = true, transformation(origin = {-50, -10}, extent = {{-10, 10}, {10, -10}}, rotation = -90)));
  Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation3(animation = false, r = {0.15, 0.4 + 0.1, 0})  annotation(
    Placement(visible = true, transformation(origin = {-110, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.BodyBox bodyBox6(r = {0,  -0.1, -0.16}) annotation(
    Placement(visible = true, transformation(origin = {30, -100}, extent = {{-10, -10}, {10, 10}}, rotation = 90)));
  Modelica.Mechanics.MultiBody.Parts.BodyCylinder bodyCylinder6(r = {0,  0, -0.1}) annotation(
    Placement(visible = true, transformation(origin = {30, -40}, extent = {{10, -10}, {-10, 10}}, rotation = -90)));
  Modelica.Mechanics.MultiBody.Joints.Prismatic prismatic2(n = {0, 0, 1}, s(fixed = false, start = 0.04), useAxisFlange = true) annotation(
    Placement(visible = true, transformation(origin = {30, -10}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation4(animation = false, r = {0.30, 0, (-0.4) - 0.1}) annotation(
    Placement(visible = true, transformation(origin = {-10, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.Translational.Components.Mass mass1(L = 0.1, m = 1, s(fixed = true, start = 0.1))  annotation(
    Placement(visible = true, transformation(origin = {-70, 100}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Mechanics.Translational.Components.Mass mass2(L = 0.1, m = 1, s(fixed = false, start = 0.05)) annotation(
    Placement(visible = true, transformation(origin = {60, 130}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  Modelica.Mechanics.Rotational.Components.Inertia inertia1(J = 10)  annotation(
    Placement(visible = true, transformation(origin = {-150, -240}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation2(r = {0.05, 0, 0}) annotation(
    Placement(visible = true, transformation(origin = {10, -180}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Joints.RevolutePlanarLoopConstraint revolute annotation(
    Placement(visible = true, transformation(origin = {-50, -130}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Joints.RevolutePlanarLoopConstraint revolute4(n = {1, 0, 0})  annotation(
    Placement(visible = true, transformation(origin = {30, -130}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Joints.Revolute revolute3(n = {1, 0, 0}) annotation(
    Placement(visible = true, transformation(origin = {30, -70}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(revolute3.frame_a, bodyBox6.frame_b) annotation(
    Line(points = {{20, -70}, {20, -70}, {20, -84}, {30, -84}, {30, -90}, {30, -90}}, color = {95, 95, 95}));
  connect(bodyCylinder6.frame_a, revolute3.frame_b) annotation(
    Line(points = {{30, -50}, {30, -50}, {30, -54}, {40, -54}, {40, -70}, {40, -70}}, color = {95, 95, 95}));
  connect(bodyBox6.frame_a, revolute4.frame_b) annotation(
    Line(points = {{30, -110}, {30, -110}, {30, -114}, {40, -114}, {40, -130}, {40, -130}}, color = {95, 95, 95}));
  connect(fixedTranslation2.frame_b, revolute4.frame_a) annotation(
    Line(points = {{20, -180}, {20, -130}}, color = {95, 95, 95}));
  connect(fixedTranslation1.frame_b, bodyCylinder2.frame_a) annotation(
    Line(points = {{-40, -180}, {-30, -180}}, color = {95, 95, 95}));
  connect(bodyCylinder2.frame_b, fixedTranslation2.frame_a) annotation(
    Line(points = {{-10, -180}, {0, -180}}, color = {95, 95, 95}));
  connect(fixedTranslation2.frame_b, bodyBox2.frame_a) annotation(
    Line(points = {{20, -180}, {30, -180}}, color = {95, 95, 95}));
  connect(revolute.frame_a, fixedTranslation1.frame_b) annotation(
    Line(points = {{-60, -130}, {-60, -146}, {-40, -146}, {-40, -180}}, color = {95, 95, 95}));
  connect(bodyBox1.frame_b, fixedTranslation1.frame_a) annotation(
    Line(points = {{-70, -180}, {-60, -180}}, color = {95, 95, 95}));
  connect(bodyBox5.frame_a, revolute.frame_b) annotation(
    Line(points = {{-50, -110}, {-50, -110}, {-50, -114}, {-40, -114}, {-40, -130}, {-40, -130}}, color = {95, 95, 95}));
  connect(mass2.flange_b, prismatic2.axis) annotation(
    Line(points = {{50, 130}, {46, 130}, {46, -18}, {36, -18}, {36, -18}}, color = {0, 127, 0}));
  connect(inertia1.flange_b, revolute1.axis) annotation(
    Line(points = {{-140, -240}, {-130, -240}, {-130, -220}, {-130, -220}, {-130, -220}}));
  connect(mass1.flange_b, prismatic1.axis) annotation(
    Line(points = {{-70, 90}, {-70, -18}, {-56, -18}}, color = {0, 127, 0}));
  connect(thermalConductor2.port_a, fixedTemperature2.port) annotation(
    Line(points = {{130, 110}, {140, 110}, {140, 110}, {140, 110}}, color = {191, 0, 0}));
  connect(sweptVolume2.heatPort, thermalConductor2.port_b) annotation(
    Line(points = {{90, 120}, {90, 110}, {110, 110}}, color = {191, 0, 0}));
  connect(mass2.flange_a, sweptVolume2.flange) annotation(
    Line(points = {{70, 130}, {80, 130}, {80, 130}, {80, 130}}, color = {0, 127, 0}));
  connect(pipe1.port_b, sweptVolume2.ports[1]) annotation(
    Line(points = {{60, 160}, {100, 160}, {100, 130}}, color = {0, 127, 255}));
  connect(sweptVolume1.flange, mass1.flange_a) annotation(
    Line(points = {{-70, 120}, {-70, 120}, {-70, 110}, {-70, 110}}, color = {0, 127, 0}));
  connect(volume.ports[2], pipe1.port_a) annotation(
    Line(points = {{10, 160}, {40, 160}, {40, 160}, {40, 160}}, color = {0, 127, 255}));
  connect(pipe.port_b, volume.ports[1]) annotation(
    Line(points = {{-40, 160}, {8, 160}, {8, 160}, {10, 160}}, color = {0, 127, 255}));
  connect(sweptVolume1.ports[1], pipe.port_a) annotation(
    Line(points = {{-70, 140}, {-70, 160}, {-60, 160}}, color = {0, 127, 255}));
  connect(thermalConductor1.port_b, sweptVolume1.heatPort) annotation(
    Line(points = {{-90, 130}, {-80, 130}}, color = {191, 0, 0}));
  connect(prescribedTemperature1.port, thermalConductor1.port_a) annotation(
    Line(points = {{-120, 130}, {-115, 130}, {-115, 130}, {-110, 130}, {-110, 130}, {-110, 130}}, color = {191, 0, 0}));
  connect(ramp1.y, prescribedTemperature1.T) annotation(
    Line(points = {{-159, 130}, {-151, 130}, {-151, 130}, {-143, 130}, {-143, 130}, {-144, 130}, {-144, 130}, {-143, 130}}, color = {0, 0, 127}));
  connect(fixedTranslation4.frame_b, prismatic2.frame_a) annotation(
    Line(points = {{0, 10}, {30, 10}, {30, 0}}, color = {95, 95, 95}));
  connect(prismatic2.frame_b, bodyCylinder6.frame_b) annotation(
    Line(points = {{30, -20}, {30, -30}}, color = {95, 95, 95}));
  connect(world.frame_b, fixedTranslation4.frame_a) annotation(
    Line(points = {{-160, -210}, {-160, -210}, {-160, 10}, {-20, 10}, {-20, 10}}, color = {95, 95, 95}));
  connect(world.frame_b, fixedTranslation3.frame_a) annotation(
    Line(points = {{-160, -210}, {-160, -210}, {-160, 0}, {-120, 0}, {-120, 0}}, color = {95, 95, 95}));
  connect(fixedTranslation3.frame_b, prismatic1.frame_a) annotation(
    Line(points = {{-100, 0}, {-50, 0}, {-50, 0}, {-50, 0}}, color = {95, 95, 95}));
  connect(bodyCylinder5.frame_b, prismatic1.frame_b) annotation(
    Line(points = {{-50, -30}, {-50, -30}, {-50, -20}, {-50, -20}}, color = {95, 95, 95}));
  connect(bodyCylinder5.frame_a, revolute2.frame_b) annotation(
    Line(points = {{-50, -50}, {-50, -50}, {-50, -56}, {-40, -56}, {-40, -70}, {-40, -70}}, color = {95, 95, 95}));
  connect(revolute2.frame_a, bodyBox5.frame_b) annotation(
    Line(points = {{-60, -70}, {-60, -70}, {-60, -86}, {-50, -86}, {-50, -90}, {-50, -90}}, color = {95, 95, 95}));
  connect(world.frame_b, revolute1.frame_a) annotation(
    Line(points = {{-160, -210}, {-140, -210}, {-140, -210}, {-140, -210}}, color = {95, 95, 95}));
  connect(revolute1.frame_b, bodyCylinder1.frame_a) annotation(
    Line(points = {{-120, -210}, {-100, -210}, {-100, -210}, {-100, -210}}, color = {95, 95, 95}));
  connect(bodyCylinder1.frame_b, bodyBox1.frame_a) annotation(
    Line(points = {{-80, -210}, {-70, -210}, {-70, -200}}, color = {95, 95, 95}));
  annotation(
    Diagram(coordinateSystem(extent = {{-200, -220}, {200, 200}})),
    __OpenModelica_commandLineOptions = "",
    experiment(StartTime = 0, StopTime = 500, Tolerance = 1e-6, Interval = 1),
    __OpenModelica_simulationFlags(lv = "LOG_STATS", outputFormat = "plt", s = "dassl"));
end StirlingEngine03_test02;
