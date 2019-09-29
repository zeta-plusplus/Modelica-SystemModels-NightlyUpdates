within SystemModels.Practice;

model test_reactor_05
  extends Modelica.Icons.Example;
  //----------
  replaceable package liquid1 = Nuclear.FuelSaltLiFBeF2 
    (final singleState=true, final enthalpyOfT=true);
  // redeclare package Medium = liquid1
  replaceable package liquid2 = Modelica.Media.Water.StandardWaterOnePhase;
  // redeclare package Medium = liquid2
  //----------
  inner Modelica.Fluid.System system annotation(
    Placement(visible = true, transformation(origin = {-90, 90}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.Ramp ramp1(duration = 100, height = 2.2, offset = 0, startTime = 20) annotation(
    Placement(visible = true, transformation(origin = {-90, 50}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Fluid.Vessels.ClosedVolume volume(redeclare package Medium = liquid1, T_start = 400 + 273.15, V = 1e-3, nPorts = 3, use_HeatTransfer = true, use_portsData = false) annotation(
    Placement(visible = true, transformation(origin = {10, -60}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Fluid.Pipes.StaticPipe pipe(redeclare package Medium = liquid1, diameter = 0.1, length = 0.5) annotation(
    Placement(visible = true, transformation(origin = {80, -70}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Fluid.Sensors.Temperature temperature(redeclare package Medium = liquid1) annotation(
    Placement(visible = true, transformation(origin = {40, -50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Add add1 annotation(
    Placement(visible = true, transformation(origin = {40, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 90)));
  Modelica.Blocks.Sources.Ramp Tfuel_ref(duration = 300, height = -11, offset = -890, startTime = 100)  annotation(
    Placement(visible = true, transformation(origin = {70, -20}, extent = {{-10, -10}, {10, 10}}, rotation = 180)));
  Modelica.Blocks.Math.Gain Tfuel_rho_feedback(k = -9.5)  annotation(
    Placement(visible = true, transformation(origin = {20, 30}, extent = {{-10, -10}, {10, 10}}, rotation = 180)));
  Modelica.Blocks.Math.Add3 add31 annotation(
    Placement(visible = true, transformation(origin = {-70, 10}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Blocks.Sources.Constant rho0(k = -2)  annotation(
    Placement(visible = true, transformation(origin = {-50, 50}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Nuclear.PointKineticMoltenSaltReactor_P1 pointKineticMoltenSaltReactor_P11(NominalPower = 10 / 1000, alpha0 = 1e-6) annotation(
    Placement(visible = true, transformation(origin = {-40, -30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.Pulse pulse1(amplitude = 200, nperiod = 2, offset = 0, period = 100, startTime = 100, width = 50)  annotation(
    Placement(visible = true, transformation(origin = {-90, -40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.Ramp ramp2(duration = 100, height = 0, offset = 50, startTime = 0) annotation(
    Placement(visible = true, transformation(origin = {-80, -110}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Fluid.Examples.HeatExchanger.BaseClasses.BasicHX basicHX1
  (redeclare package Medium_1 = liquid2, redeclare package Medium_2 = liquid1, Twall_start = Modelica.SIunits.Conversions.from_degC(625), area_h_1 = 0.628 * 11.0003, area_h_2 = 0.628 * 11.0003,
    c_wall=500, crossArea_1 = 3.14e-2, crossArea_2 = 3.14e-2, dT = 1, k_wall = 100, length = 11.0003, modelStructure_1 = Modelica.Fluid.Types.ModelStructure.av_b, modelStructure_2 = Modelica.Fluid.Types.ModelStructure.a_vb, nNodes = 2, perimeter_1 = 0.628, perimeter_2 = 0.628,
    rho_wall=900,
  s_wall=0.005, use_T_start = false,
  redeclare model HeatTransfer_1 =
        Modelica.Fluid.Pipes.BaseClasses.HeatTransfer.ConstantFlowHeatTransfer
        (alpha0=2000),
         redeclare model HeatTransfer_2 =
        Modelica.Fluid.Pipes.BaseClasses.HeatTransfer.ConstantFlowHeatTransfer
        (alpha0=2000)
    )
    annotation(
    Placement(visible = true, transformation(origin = {30, -160}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Fluid.Sources.MassFlowSource_T begin_liquid2(redeclare package Medium = liquid2, T = 15 + 273.15, m_flow = 10, nPorts = 1)  annotation(
    Placement(visible = true, transformation(origin = {-10, -180}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Fluid.Sources.Boundary_pT end_liquid2(redeclare package Medium = liquid2, nPorts = 1, p = 101.3 * 1000)  annotation(
    Placement(visible = true, transformation(origin = {60, -190}, extent = {{-10, -10}, {10, 10}}, rotation = 90)));
  Modelica.Fluid.Sources.Boundary_pT tank(redeclare package Medium = liquid1,nPorts = 1, p = 101.3 * 1000)  annotation(
    Placement(visible = true, transformation(origin = {-50, -140}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Fluid.Sensors.Temperature temperature1(redeclare package Medium = liquid1) annotation(
    Placement(visible = true, transformation(origin = {10, -130}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Fluid.Sources.MassFlowSource_T boundary(redeclare package Medium = liquid1, nPorts = 1, use_T_in = true, use_m_flow_in = true)  annotation(
    Placement(visible = true, transformation(origin = {-10, -90}, extent = {{-10, -10}, {10, 10}}, rotation = 90)));
  Modelica.Fluid.Vessels.ClosedVolume volume1(redeclare package Medium = liquid1, T_start = 400 + 273.15, V = 1e-3, nPorts = 3, use_HeatTransfer = true, use_portsData = false) annotation(
    Placement(visible = true, transformation(origin = {-20, -140}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(pulse1.y, pointKineticMoltenSaltReactor_P11.rho_control) annotation(
    Line(points = {{-78, -40}, {-56, -40}, {-56, -34}, {-50, -34}}, color = {0, 0, 127}));
  connect(temperature.T, add1.u1) annotation(
    Line(points = {{47, -50}, {47, -52.5}, {55, -52.5}, {55, -31}, {33, -31}, {33, -12}}, color = {0, 0, 127}));
  connect(volume.ports[3], temperature.port) annotation(
    Line(points = {{10, -70}, {40, -70}, {40, -60}}, color = {0, 127, 255}));
  connect(tank.ports[1], volume1.ports[1]) annotation(
    Line(points = {{-40, -140}, {-40, -150}, {-20, -150}}, color = {0, 127, 255}, thickness = 0.5));
  connect(ramp2.y, boundary.m_flow_in) annotation(
    Line(points = {{-69, -110}, {-18, -110}, {-18, -100}}, color = {0, 0, 127}));
  connect(volume1.ports[3], temperature1.port) annotation(
    Line(points = {{-20, -150}, {10, -150}, {10, -140}, {10, -140}}, color = {0, 127, 255}));
  connect(volume1.ports[2], basicHX1.port_b2) annotation(
    Line(points = {{-20, -150}, {-10, -150}, {-10, -156}, {20, -156}, {20, -156}}, color = {0, 127, 255}));
  connect(basicHX1.port_b1, end_liquid2.ports[1]) annotation(
    Line(points = {{41, -160.2}, {59, -160.2}, {59, -180.2}, {59, -180.2}}, color = {0, 127, 255}));
  connect(begin_liquid2.ports[1], basicHX1.port_a1) annotation(
    Line(points = {{0, -180}, {8, -180}, {8, -160}, {18, -160}}, color = {0, 127, 255}));
  connect(volume.ports[2], pipe.port_a) annotation(
    Line(points = {{10, -70}, {70, -70}}, color = {0, 127, 255}));
  connect(pipe.port_b, basicHX1.port_a2) annotation(
    Line(points = {{90, -70}, {96, -70}, {96, -165}, {41, -165}}, color = {0, 127, 255}));
  connect(temperature1.T, boundary.T_in) annotation(
    Line(points = {{17, -130}, {27, -130}, {27, -112}, {-15, -112}, {-15, -102}, {-15, -102}}, color = {0, 0, 127}));
  connect(pointKineticMoltenSaltReactor_P11.port_b, volume.heatPort) annotation(
    Line(points = {{-30, -22}, {-22, -22}, {-22, -60}, {0, -60}}, color = {191, 0, 0}));
  connect(boundary.ports[1], volume.ports[1]) annotation(
    Line(points = {{-10, -80}, {-10, -80}, {-10, -70}, {10, -70}, {10, -70}}, color = {0, 127, 255}, thickness = 0.5));
  connect(add31.y, pointKineticMoltenSaltReactor_P11.rho) annotation(
    Line(points = {{-70, 0}, {-70, 0}, {-70, -22}, {-50, -22}, {-50, -22}}, color = {0, 0, 127}));
  connect(Tfuel_rho_feedback.y, add31.u1) annotation(
    Line(points = {{8, 30}, {-62, 30}, {-62, 22}}, color = {0, 0, 127}));
  connect(ramp1.y, add31.u3) annotation(
    Line(points = {{-90, 40}, {-90, 28}, {-78, 28}, {-78, 22}}, color = {0, 0, 127}));
  connect(add31.u2, rho0.y) annotation(
    Line(points = {{-70, 22}, {-70, 34}, {-50, 34}, {-50, 38}}, color = {0, 0, 127}));
  connect(add1.u2, Tfuel_ref.y) annotation(
    Line(points = {{46, -12}, {46, -20}, {59, -20}}, color = {0, 0, 127}));
  connect(Tfuel_rho_feedback.u, add1.y) annotation(
    Line(points = {{32, 30}, {40, 30}, {40, 12}, {40, 12}}, color = {0, 0, 127}));
  annotation(
    experiment(StartTime = 0, StopTime = 400, Tolerance = 1e-06, Interval = 0.0666667),
    __OpenModelica_simulationFlags(lv = "LOG_STATS", outputFormat = "mat", s = "dassl"),
  Diagram(coordinateSystem(extent = {{-100, -200}, {160, 100}})),
  __OpenModelica_commandLineOptions = "");
end test_reactor_05;