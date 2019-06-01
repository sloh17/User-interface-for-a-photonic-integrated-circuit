classdef GUI_exported < matlab.apps.AppBase

    % Properties that correspond to app components
    properties (Access = public)
        UIFigure                        matlab.ui.Figure
        TabGroup                        matlab.ui.container.TabGroup
        instructionsTab                 matlab.ui.container.Tab
        Step1uploadcalibrationfileoncalibrationpageLabel  matlab.ui.control.Label
        Step2inputintendedoutputamplitudesimageofuploadpageLabel  matlab.ui.control.Label
        Step3confirmuploadcurrentLabel  matlab.ui.control.Label
        STARTButton                     matlab.ui.control.Button
        Label                           matlab.ui.control.Label
        InstructionsLabel               matlab.ui.control.Label
        Image                           matlab.ui.control.Image
        Image2                          matlab.ui.control.Image
        Image3                          matlab.ui.control.Image
        calibrationTab                  matlab.ui.container.Tab
        UploadcalibratefileButton       matlab.ui.control.Button
        FileUploadedCheckBox            matlab.ui.control.CheckBox
        CalibrateButton                 matlab.ui.control.Button
        CalibratetxtfileEditFieldLabel  matlab.ui.control.Label
        CalibratetxtfileEditField       matlab.ui.control.EditField
        UITable                         matlab.ui.control.Table
        CalibrationpageLabel            matlab.ui.control.Label
        MaxCurrentmAEditFieldLabel      matlab.ui.control.Label
        MaxCurrentmAEditField           matlab.ui.control.EditField
        MaxVoltageVEditFieldLabel       matlab.ui.control.Label
        MaxVoltageVEditField            matlab.ui.control.EditField
        defineoutputTab                 matlab.ui.container.Tab
        Amplitude1EditFieldLabel        matlab.ui.control.Label
        Amplitude1EditField             matlab.ui.control.NumericEditField
        Amplitude2EditFieldLabel        matlab.ui.control.Label
        Amplitude2EditField             matlab.ui.control.NumericEditField
        Amplitude3EditFieldLabel        matlab.ui.control.Label
        Amplitude3EditField             matlab.ui.control.NumericEditField
        Amplitude4EditFieldLabel        matlab.ui.control.Label
        Amplitude4EditField             matlab.ui.control.NumericEditField
        Amplitude5EditFieldLabel        matlab.ui.control.Label
        Amplitude5EditField             matlab.ui.control.NumericEditField
        Amplitude6EditFieldLabel        matlab.ui.control.Label
        Amplitude6EditField             matlab.ui.control.NumericEditField
        Amplitude7EditFieldLabel        matlab.ui.control.Label
        Amplitude7EditField             matlab.ui.control.NumericEditField
        Amplitude8EditFieldLabel        matlab.ui.control.Label
        Amplitude8EditField             matlab.ui.control.NumericEditField
        calculateButton                 matlab.ui.control.Button
        Amplitude9Label                 matlab.ui.control.Label
        Amplitude9EditField             matlab.ui.control.NumericEditField
        Amplitude10EditFieldLabel       matlab.ui.control.Label
        Amplitude10EditField            matlab.ui.control.NumericEditField
        Amplitude11EditFieldLabel       matlab.ui.control.Label
        Amplitude11EditField            matlab.ui.control.NumericEditField
        Amplitude12EditFieldLabel       matlab.ui.control.Label
        Amplitude12EditField            matlab.ui.control.NumericEditField
        Amplitude13EditFieldLabel       matlab.ui.control.Label
        Amplitude13EditField            matlab.ui.control.NumericEditField
        Amplitude14EditFieldLabel       matlab.ui.control.Label
        Amplitude14EditField            matlab.ui.control.NumericEditField
        Amplitude15EditFieldLabel       matlab.ui.control.Label
        Amplitude15EditField            matlab.ui.control.NumericEditField
        Amplitude16EditFieldLabel       matlab.ui.control.Label
        Amplitude16EditField            matlab.ui.control.NumericEditField
        DefineindividualoutputamplitudeLabel  matlab.ui.control.Label
        uploadTab                       matlab.ui.container.Tab
        Current1EditField               matlab.ui.control.NumericEditField
        Current2EditFieldLabel          matlab.ui.control.Label
        Current2EditField               matlab.ui.control.NumericEditField
        Current3EditFieldLabel          matlab.ui.control.Label
        Current3EditField               matlab.ui.control.NumericEditField
        Current4EditFieldLabel          matlab.ui.control.Label
        Current4EditField               matlab.ui.control.NumericEditField
        Current5EditFieldLabel          matlab.ui.control.Label
        Current5EditField               matlab.ui.control.NumericEditField
        Current6EditFieldLabel          matlab.ui.control.Label
        Current6EditField               matlab.ui.control.NumericEditField
        Current7EditFieldLabel          matlab.ui.control.Label
        Current7EditField               matlab.ui.control.NumericEditField
        Current8EditFieldLabel          matlab.ui.control.Label
        Current8EditField               matlab.ui.control.NumericEditField
        Current9EditFieldLabel          matlab.ui.control.Label
        Current9EditField               matlab.ui.control.NumericEditField
        Current10EditFieldLabel         matlab.ui.control.Label
        Current10EditField              matlab.ui.control.NumericEditField
        Current11EditFieldLabel         matlab.ui.control.Label
        Current11EditField              matlab.ui.control.NumericEditField
        Current12EditFieldLabel         matlab.ui.control.Label
        Current12EditField              matlab.ui.control.NumericEditField
        Current13EditFieldLabel         matlab.ui.control.Label
        Current13EditField              matlab.ui.control.NumericEditField
        Current14EditFieldLabel         matlab.ui.control.Label
        Current14EditField              matlab.ui.control.NumericEditField
        Current15EditFieldLabel         matlab.ui.control.Label
        Current15EditField              matlab.ui.control.NumericEditField
        uploadButton                    matlab.ui.control.Button
        ReadyLampLabel                  matlab.ui.control.Label
        ReadyLamp                       matlab.ui.control.Lamp
        SendingLampLabel                matlab.ui.control.Label
        SendingLamp                     matlab.ui.control.Lamp
        Current2EditFieldLabel_2        matlab.ui.control.Label
        ConfirmuploadcurrentLabel       matlab.ui.control.Label
        resultsTab                      matlab.ui.container.Tab
        UserOutputUIAxes                matlab.ui.control.UIAxes
        PhaseCurrentUIAxes              matlab.ui.control.UIAxes
        MZInumberButtonGroup            matlab.ui.container.ButtonGroup
        Button_2                        matlab.ui.control.ToggleButton
        Button_3                        matlab.ui.control.ToggleButton
        Button_4                        matlab.ui.control.ToggleButton
        Button_5                        matlab.ui.control.ToggleButton
        Button_6                        matlab.ui.control.ToggleButton
        Button_7                        matlab.ui.control.ToggleButton
        Button_8                        matlab.ui.control.ToggleButton
        Button_9                        matlab.ui.control.ToggleButton
        Button_10                       matlab.ui.control.ToggleButton
        Button_11                       matlab.ui.control.ToggleButton
        Button_12                       matlab.ui.control.ToggleButton
        Button_13                       matlab.ui.control.ToggleButton
        Button_14                       matlab.ui.control.ToggleButton
        Button_15                       matlab.ui.control.ToggleButton
        Button_16                       matlab.ui.control.ToggleButton
        ResultsLabel                    matlab.ui.control.Label
        AxesTitle                       matlab.ui.control.Label
        NEWCalibrationButton            matlab.ui.control.Button
        NEWoutputButton                 matlab.ui.control.Button
        FunctionforMZInotdefinedLabel   matlab.ui.control.Label
    end

    % Callbacks that handle component events
    methods (Access = private)

        % Button pushed function: STARTButton
        function STARTButtonPushed(app, event)
            app.TabGroup.SelectedTab = app.calibrationTab;
        end

        % Button pushed function: UploadcalibratefileButton
        function UploadcalibratefileButtonPushed(app, event)
            txtfile = app.CalibratetxtfileEditField.Value;
            % create global variables for txt file data
            global MAXcurrent;
            global MAXvoltage;
            global calibration_data;
            % read calibration test file and record data in global variable
            [MAXcurrent,MAXvoltage,calibration_data] = upload_calibrate_file(txtfile);
            app.UITable.Data = calibration_data;
            app.MaxCurrentmAEditField.Value = MAXcurrent;
            app.MaxVoltageVEditField.Value = MAXvoltage;
            app.FileUploadedCheckBox.Value = 1;
        end

        % Value changing function: CalibratetxtfileEditField
        function CalibratetxtfileEditFieldValueChanging(app, event)
            app.FileUploadedCheckBox.Value = 0;
        end

        % Button pushed function: CalibrateButton
        function CalibrateButtonPushed(app, event)
            app.TabGroup.SelectedTab= app.defineoutputTab;
        end

        % Button pushed function: calculateButton
        function calculateButtonPushed(app, event)
            app.ReadyLamp.Enable = 'on';
            % defining global variables
            global phase;
            global amplitude;
            global CUR;
            amplitude = zeros(1,15);
            % get amplitude values from outputs page
            amplitude(1) = app.Amplitude1EditField.Value;
            amplitude(2) = app.Amplitude2EditField.Value;
            amplitude(3) = app.Amplitude3EditField.Value;
            amplitude(4) = app.Amplitude4EditField.Value;
            amplitude(5) = app.Amplitude5EditField.Value;
            amplitude(6) = app.Amplitude6EditField.Value;
            amplitude(7) = app.Amplitude7EditField.Value;
            amplitude(8) = app.Amplitude8EditField.Value;
            amplitude(9) = app.Amplitude9EditField.Value;
            amplitude(10) = app.Amplitude10EditField.Value;
            amplitude(11) = app.Amplitude11EditField.Value;
            amplitude(12) = app.Amplitude12EditField.Value;
            amplitude(13) = app.Amplitude13EditField.Value;
            amplitude(14) = app.Amplitude14EditField.Value;
            amplitude(15) = app.Amplitude15EditField.Value;
            amplitude(16) = app.Amplitude16EditField.Value;
            % plot ampitude on results page
            time = 1:16;
            plot(app.UserOutputUIAxes,time,amplitude, '-r');
            % calculate phase from amplitude values
            phase = amplitude_to_phase(amplitude);
            % calculate current from phase
            CUR = zeros(1,15);
            for i = 1 : 15
                [x1,y1,x2,y2,def] = defineMZIphasetocurrentrelation(i,phase);
                CUR(i) = x2;
            end
            CUR = round(CUR,3);
            % shown current values in upload page edit fields
            app.Current1EditField.Value = CUR(1);
            app.Current2EditField.Value = CUR(2);
            app.Current3EditField.Value = CUR(3);
            app.Current4EditField.Value = CUR(4);
            app.Current5EditField.Value = CUR(5);
            app.Current6EditField.Value = CUR(6);
            app.Current7EditField.Value = CUR(7);
            app.Current8EditField.Value = CUR(8);
            app.Current9EditField.Value = CUR(9);
            app.Current10EditField.Value = CUR(10);
            app.Current11EditField.Value = CUR(11);
            app.Current12EditField.Value = CUR(12);
            app.Current13EditField.Value = CUR(13);
            app.Current14EditField.Value = CUR(14);
            app.Current15EditField.Value = CUR(15);
            % plots figure 2 in results page for MZI number 1
            [PCCx,PCCy,PCPx,PCPy,def] = defineMZIphasetocurrentrelation(1,phase);
            plot(app.PhaseCurrentUIAxes,PCCx,PCCy,'b');
            plot(app.PhaseCurrentUIAxes,PCPx,PCPy,'ko');
            % transfers UI to outputs page
            app.TabGroup.SelectedTab = app.uploadTab;
            % set background colour of edit fields based on power values
            if CUR(1) == 0.2
                app.Current1EditField.BackgroundColor = '#ff0000';
            elseif CUR(1) > 0.15
                app.Current1EditField.BackgroundColor = '#f7e74f';
            end
            if CUR(2) == 0.2
                app.Current2EditField.BackgroundColor = '#ff0000';
            elseif CUR(2) > 0.15
                app.Current2EditField.BackgroundColor = '#f7e74f';
            end
            if CUR(3) == 0.2
                app.Current3EditField.BackgroundColor = '#ff0000';
            elseif CUR(3) > 0.15
                app.Current3EditField.BackgroundColor = '#f7e74f';
            end
            if CUR(4) == 0.2
                app.Current4EditField.BackgroundColor = '#ff0000';
            elseif CUR(4) > 0.15
                app.Current4EditField.BackgroundColor = '#f7e74f';
            end
            if CUR(5) == 0.2
                app.Current5EditField.BackgroundColor = '#ff0000';
            elseif CUR(5) > 0.15
                app.Current5EditField.BackgroundColor = '#f7e74f';
            end
            if CUR(6) == 0.2
                app.Current6EditField.BackgroundColor = '#ff0000';
            elseif CUR(6) > 0.15
                app.Current6EditField.BackgroundColor = '#f7e74f';
            end
            if CUR(7) == 0.2
                app.Current7EditField.BackgroundColor = '#ff0000';
            elseif CUR(7) > 0.15
                app.Current7EditField.BackgroundColor = '#f7e74f';
            end
            if CUR(8) == 0.2
                app.Current8EditField.BackgroundColor = '#ff0000';
            elseif CUR(8) > 0.15
                app.Current8EditField.BackgroundColor = '#f7e74f';
            end
            if CUR(9) == 0.2
                app.Current9EditField.BackgroundColor = '#ff0000';
            elseif CUR(9) > 0.15
                app.Current9EditField.BackgroundColor = '#f7e74f';
            end
            if CUR(10) == 0.2
                app.Current10EditField.BackgroundColor = '#ff0000';
            elseif CUR(10) > 0.15
                app.Current10EditField.BackgroundColor = '#f7e74f';
            end
            if CUR(11) == 0.2
                app.Current11EditField.BackgroundColor = '#ff0000';
            elseif CUR(11) > 0.15
                app.Current11EditField.BackgroundColor = '#f7e74f';
            end
            if CUR(12) == 0.2
                app.Current12EditField.BackgroundColor = '#ff0000';
            elseif CUR(12) > 0.15
                app.Current12EditField.BackgroundColor = '#f7e74f';
            end
            if CUR(13) == 0.2
                app.Current13EditField.BackgroundColor = '#ff0000';
            elseif CUR(13) > 0.15
                app.Current1EditField.BackgroundColor = '#f7e74f';
            end
            if CUR(14) == 0.2
                app.Current14EditField.BackgroundColor = '#ff0000';
            elseif CUR(14) > 04.15
                app.Current14EditField.BackgroundColor = '#f7e74f';
            end
            if CUR(15) == 0.2
                app.Current15EditField.BackgroundColor = '#ff0000';
            elseif CUR(15) > 0.15
                app.Current15EditField.BackgroundColor = '#f7e74f';
            end
        end

        % Button pushed function: uploadButton
        function uploadButtonPushed(app, event)
            % runs m-file function that sends CUR values to arudino and
            % then to the power supply using SPI format
            % retrieving global variables
            global CUR;
            %***********************************
            app.ReadyLamp.Enable = 'off';
            app.SendingLamp.Enable = 'on';
            matlab_to_arduino(CUR);
            app.SendingLamp.Enable = 'off';
            app.ReadyLamp.Enable ='on';
            pause(1);
            app.TabGroup.SelectedTab = app.resultsTab;  
        end

        % Selection changed function: MZInumberButtonGroup
        function MZInumberButtonGroupSelectionChanged(app, event)
            selectedButton = app.MZInumberButtonGroup.SelectedObject;
            % retrieving global variables 
            global phase;
            %**************************
            app.PhaseCurrentUIAxes.NextPlot = 'replace';
            % % change plot title when button pressed
            template = 'Phase vs Current for MZI no. ';
            title = [template selectedButton.Text];
            app.AxesTitle.Text = title;
            app.AxesTitle.HorizontalAlignment = 'center';
            % % change plot data when button pressed
            [PCCx,PCCy,PCPx,PCPy,def] = defineMZIphasetocurrentrelation(str2num(selectedButton.Text),phase);
            if def == 1
                % MZI default equation is used - display 'not defined label'
                app.FunctionforMZInotdefinedLabel.Visible = 1;
            else
                % MZI function defined - plot data 
                app.FunctionforMZInotdefinedLabel.Visible = 0;
            end
                plot(app.PhaseCurrentUIAxes,PCCx,PCCy,'b');
                app.PhaseCurrentUIAxes.NextPlot = 'add';
                plot(app.PhaseCurrentUIAxes,PCPx,PCPy,'ko');
                app.PhaseCurrentUIAxes.YLim = [0 1];
        end

        % Button pushed function: NEWCalibrationButton
        function NEWCalibrationButtonPushed(app, event)
            app.TabGroup.SelectedTab = app.calibrationTab;
        end

        % Button pushed function: NEWoutputButton
        function NEWoutputButtonPushed(app, event)
            app.TabGroup.SelectedTab = app.defineoutputTab;
        end
    end

    % Component initialization
    methods (Access = private)

        % Create UIFigure and components
        function createComponents(app)

            % Create UIFigure and hide until all components are created
            app.UIFigure = uifigure('Visible', 'off');
            app.UIFigure.Position = [100 100 600 442];
            app.UIFigure.Name = 'UI Figure';

            % Create TabGroup
            app.TabGroup = uitabgroup(app.UIFigure);
            app.TabGroup.Position = [1 2 600 441];

            % Create instructionsTab
            app.instructionsTab = uitab(app.TabGroup);
            app.instructionsTab.Title = 'instructions';

            % Create Step1uploadcalibrationfileoncalibrationpageLabel
            app.Step1uploadcalibrationfileoncalibrationpageLabel = uilabel(app.instructionsTab);
            app.Step1uploadcalibrationfileoncalibrationpageLabel.Position = [27 284 333 69];
            app.Step1uploadcalibrationfileoncalibrationpageLabel.Text = {'Step 1. '; ': upload calibration file on "calibration page"'; '       1. enter calibration txt file name and click "upload"'; '       2. click "calibrate" to upload setting and to continue'; ''};

            % Create Step2inputintendedoutputamplitudesimageofuploadpageLabel
            app.Step2inputintendedoutputamplitudesimageofuploadpageLabel = uilabel(app.instructionsTab);
            app.Step2inputintendedoutputamplitudesimageofuploadpageLabel.Position = [373 222 209 54];
            app.Step2inputintendedoutputamplitudesimageofuploadpageLabel.Text = {'Step 2. '; ': input intended output amplitudes'; '       1. define intended system outputs'; '       2. click "calculate" to continue'; ''};

            % Create Step3confirmuploadcurrentLabel
            app.Step3confirmuploadcurrentLabel = uilabel(app.instructionsTab);
            app.Step3confirmuploadcurrentLabel.Position = [27 169 290 54];
            app.Step3confirmuploadcurrentLabel.Text = {'Step 3. '; ': confirm upload current '; '       1. confirm that upload current are safe for device'; '       2. click "upload" to send data to power supply'};

            % Create STARTButton
            app.STARTButton = uibutton(app.instructionsTab, 'push');
            app.STARTButton.ButtonPushedFcn = createCallbackFcn(app, @STARTButtonPushed, true);
            app.STARTButton.Position = [250 25 100 22];
            app.STARTButton.Text = 'START';

            % Create Label
            app.Label = uilabel(app.instructionsTab);
            app.Label.Position = [350 62 232 108];
            app.Label.Text = {'Step 4.'; ': results are displayed'; '       1. select MZI number to see confirm'; '           individual amplitude to phase curve'; '       2. click "NEW calibrate" to input new'; '           calibration file. '; '       3. click "NEW output" to define new '; '           output amplitude'};

            % Create InstructionsLabel
            app.InstructionsLabel = uilabel(app.instructionsTab);
            app.InstructionsLabel.FontSize = 20;
            app.InstructionsLabel.FontWeight = 'bold';
            app.InstructionsLabel.Position = [240 362 120 23];
            app.InstructionsLabel.Text = 'Instructions';

            % Create Image
            app.Image = uiimage(app.instructionsTab);
            app.Image.Position = [307 284 100 39];
            app.Image.ImageSource = 'red arrow(-45).jpg';

            % Create Image2
            app.Image2 = uiimage(app.instructionsTab);
            app.Image2.Position = [284 200 90 41];
            app.Image2.ImageSource = 'red arrow(-45) rotated.jpg';

            % Create Image3
            app.Image3 = uiimage(app.instructionsTab);
            app.Image3.Position = [273 107 72 45];
            app.Image3.ImageSource = 'red arrow rotated.jpg';

            % Create calibrationTab
            app.calibrationTab = uitab(app.TabGroup);
            app.calibrationTab.Title = '1. calibration';

            % Create UploadcalibratefileButton
            app.UploadcalibratefileButton = uibutton(app.calibrationTab, 'push');
            app.UploadcalibratefileButton.ButtonPushedFcn = createCallbackFcn(app, @UploadcalibratefileButtonPushed, true);
            app.UploadcalibratefileButton.Position = [354 308 121 22];
            app.UploadcalibratefileButton.Text = 'Upload calibrate file';

            % Create FileUploadedCheckBox
            app.FileUploadedCheckBox = uicheckbox(app.calibrationTab);
            app.FileUploadedCheckBox.Text = 'File Uploaded';
            app.FileUploadedCheckBox.Position = [217 279 100 22];

            % Create CalibrateButton
            app.CalibrateButton = uibutton(app.calibrationTab, 'push');
            app.CalibrateButton.ButtonPushedFcn = createCallbackFcn(app, @CalibrateButtonPushed, true);
            app.CalibrateButton.Position = [250 25 100 22];
            app.CalibrateButton.Text = 'Calibrate';

            % Create CalibratetxtfileEditFieldLabel
            app.CalibratetxtfileEditFieldLabel = uilabel(app.calibrationTab);
            app.CalibratetxtfileEditFieldLabel.HorizontalAlignment = 'right';
            app.CalibratetxtfileEditFieldLabel.Position = [107 308 95 22];
            app.CalibratetxtfileEditFieldLabel.Text = 'Calibrate txt file :';

            % Create CalibratetxtfileEditField
            app.CalibratetxtfileEditField = uieditfield(app.calibrationTab, 'text');
            app.CalibratetxtfileEditField.ValueChangingFcn = createCallbackFcn(app, @CalibratetxtfileEditFieldValueChanging, true);
            app.CalibratetxtfileEditField.Position = [217 308 100 22];

            % Create UITable
            app.UITable = uitable(app.calibrationTab);
            app.UITable.ColumnName = {'MZI no.'; 'offset'; 'gain'};
            app.UITable.ColumnWidth = {70, 135, 135};
            app.UITable.RowName = {};
            app.UITable.Position = [40 65 363 198];

            % Create CalibrationpageLabel
            app.CalibrationpageLabel = uilabel(app.calibrationTab);
            app.CalibrationpageLabel.FontSize = 20;
            app.CalibrationpageLabel.FontWeight = 'bold';
            app.CalibrationpageLabel.Position = [219 362 162 23];
            app.CalibrationpageLabel.Text = 'Calibration page';

            % Create MaxCurrentmAEditFieldLabel
            app.MaxCurrentmAEditFieldLabel = uilabel(app.calibrationTab);
            app.MaxCurrentmAEditFieldLabel.HorizontalAlignment = 'center';
            app.MaxCurrentmAEditFieldLabel.Position = [449 208 100 22];
            app.MaxCurrentmAEditFieldLabel.Text = 'Max Current [mA]';

            % Create MaxCurrentmAEditField
            app.MaxCurrentmAEditField = uieditfield(app.calibrationTab, 'text');
            app.MaxCurrentmAEditField.Editable = 'off';
            app.MaxCurrentmAEditField.Position = [447 187 100 22];

            % Create MaxVoltageVEditFieldLabel
            app.MaxVoltageVEditFieldLabel = uilabel(app.calibrationTab);
            app.MaxVoltageVEditFieldLabel.HorizontalAlignment = 'center';
            app.MaxVoltageVEditFieldLabel.Position = [455 127 90 22];
            app.MaxVoltageVEditFieldLabel.Text = 'Max Voltage [V]';

            % Create MaxVoltageVEditField
            app.MaxVoltageVEditField = uieditfield(app.calibrationTab, 'text');
            app.MaxVoltageVEditField.Editable = 'off';
            app.MaxVoltageVEditField.Position = [447 106 100 22];

            % Create defineoutputTab
            app.defineoutputTab = uitab(app.TabGroup);
            app.defineoutputTab.Title = '2. define output';

            % Create Amplitude1EditFieldLabel
            app.Amplitude1EditFieldLabel = uilabel(app.defineoutputTab);
            app.Amplitude1EditFieldLabel.HorizontalAlignment = 'center';
            app.Amplitude1EditFieldLabel.Position = [46 304 69 22];
            app.Amplitude1EditFieldLabel.Text = 'Amplitude 1';

            % Create Amplitude1EditField
            app.Amplitude1EditField = uieditfield(app.defineoutputTab, 'numeric');
            app.Amplitude1EditField.HorizontalAlignment = 'center';
            app.Amplitude1EditField.Position = [130 305 112 22];

            % Create Amplitude2EditFieldLabel
            app.Amplitude2EditFieldLabel = uilabel(app.defineoutputTab);
            app.Amplitude2EditFieldLabel.HorizontalAlignment = 'right';
            app.Amplitude2EditFieldLabel.Position = [46 275 69 22];
            app.Amplitude2EditFieldLabel.Text = 'Amplitude 2';

            % Create Amplitude2EditField
            app.Amplitude2EditField = uieditfield(app.defineoutputTab, 'numeric');
            app.Amplitude2EditField.HorizontalAlignment = 'center';
            app.Amplitude2EditField.Position = [130 275 112 22];

            % Create Amplitude3EditFieldLabel
            app.Amplitude3EditFieldLabel = uilabel(app.defineoutputTab);
            app.Amplitude3EditFieldLabel.HorizontalAlignment = 'right';
            app.Amplitude3EditFieldLabel.Position = [46 246 69 22];
            app.Amplitude3EditFieldLabel.Text = 'Amplitude 3';

            % Create Amplitude3EditField
            app.Amplitude3EditField = uieditfield(app.defineoutputTab, 'numeric');
            app.Amplitude3EditField.HorizontalAlignment = 'center';
            app.Amplitude3EditField.Position = [130 246 112 22];

            % Create Amplitude4EditFieldLabel
            app.Amplitude4EditFieldLabel = uilabel(app.defineoutputTab);
            app.Amplitude4EditFieldLabel.HorizontalAlignment = 'right';
            app.Amplitude4EditFieldLabel.Position = [46 217 69 22];
            app.Amplitude4EditFieldLabel.Text = 'Amplitude 4';

            % Create Amplitude4EditField
            app.Amplitude4EditField = uieditfield(app.defineoutputTab, 'numeric');
            app.Amplitude4EditField.HorizontalAlignment = 'center';
            app.Amplitude4EditField.Position = [130 217 112 22];

            % Create Amplitude5EditFieldLabel
            app.Amplitude5EditFieldLabel = uilabel(app.defineoutputTab);
            app.Amplitude5EditFieldLabel.HorizontalAlignment = 'right';
            app.Amplitude5EditFieldLabel.Position = [46 189 72 22];
            app.Amplitude5EditFieldLabel.Text = 'Amplitude  5';

            % Create Amplitude5EditField
            app.Amplitude5EditField = uieditfield(app.defineoutputTab, 'numeric');
            app.Amplitude5EditField.HorizontalAlignment = 'center';
            app.Amplitude5EditField.Position = [130 185 112 22];

            % Create Amplitude6EditFieldLabel
            app.Amplitude6EditFieldLabel = uilabel(app.defineoutputTab);
            app.Amplitude6EditFieldLabel.HorizontalAlignment = 'right';
            app.Amplitude6EditFieldLabel.Position = [46 157 72 22];
            app.Amplitude6EditFieldLabel.Text = 'Amplitude  6';

            % Create Amplitude6EditField
            app.Amplitude6EditField = uieditfield(app.defineoutputTab, 'numeric');
            app.Amplitude6EditField.HorizontalAlignment = 'center';
            app.Amplitude6EditField.Position = [130 151 112 22];

            % Create Amplitude7EditFieldLabel
            app.Amplitude7EditFieldLabel = uilabel(app.defineoutputTab);
            app.Amplitude7EditFieldLabel.HorizontalAlignment = 'right';
            app.Amplitude7EditFieldLabel.Position = [46 123 69 22];
            app.Amplitude7EditFieldLabel.Text = 'Amplitude 7';

            % Create Amplitude7EditField
            app.Amplitude7EditField = uieditfield(app.defineoutputTab, 'numeric');
            app.Amplitude7EditField.HorizontalAlignment = 'center';
            app.Amplitude7EditField.Position = [130 123 112 22];

            % Create Amplitude8EditFieldLabel
            app.Amplitude8EditFieldLabel = uilabel(app.defineoutputTab);
            app.Amplitude8EditFieldLabel.HorizontalAlignment = 'right';
            app.Amplitude8EditFieldLabel.Position = [46 95 72 22];
            app.Amplitude8EditFieldLabel.Text = 'Amplitude  8';

            % Create Amplitude8EditField
            app.Amplitude8EditField = uieditfield(app.defineoutputTab, 'numeric');
            app.Amplitude8EditField.HorizontalAlignment = 'center';
            app.Amplitude8EditField.Position = [130 90 112 22];

            % Create calculateButton
            app.calculateButton = uibutton(app.defineoutputTab, 'push');
            app.calculateButton.ButtonPushedFcn = createCallbackFcn(app, @calculateButtonPushed, true);
            app.calculateButton.Position = [250 25 100 22];
            app.calculateButton.Text = {'calculate'; ''};

            % Create Amplitude9Label
            app.Amplitude9Label = uilabel(app.defineoutputTab);
            app.Amplitude9Label.HorizontalAlignment = 'center';
            app.Amplitude9Label.Position = [360 304 73 22];
            app.Amplitude9Label.Text = 'Amplitude  9';

            % Create Amplitude9EditField
            app.Amplitude9EditField = uieditfield(app.defineoutputTab, 'numeric');
            app.Amplitude9EditField.HorizontalAlignment = 'center';
            app.Amplitude9EditField.Position = [449 305 112 22];

            % Create Amplitude10EditFieldLabel
            app.Amplitude10EditFieldLabel = uilabel(app.defineoutputTab);
            app.Amplitude10EditFieldLabel.HorizontalAlignment = 'right';
            app.Amplitude10EditFieldLabel.Position = [360 275 75 22];
            app.Amplitude10EditFieldLabel.Text = 'Amplitude 10';

            % Create Amplitude10EditField
            app.Amplitude10EditField = uieditfield(app.defineoutputTab, 'numeric');
            app.Amplitude10EditField.HorizontalAlignment = 'center';
            app.Amplitude10EditField.Position = [449 275 112 22];

            % Create Amplitude11EditFieldLabel
            app.Amplitude11EditFieldLabel = uilabel(app.defineoutputTab);
            app.Amplitude11EditFieldLabel.HorizontalAlignment = 'right';
            app.Amplitude11EditFieldLabel.Position = [360 246 74 22];
            app.Amplitude11EditFieldLabel.Text = 'Amplitude 11';

            % Create Amplitude11EditField
            app.Amplitude11EditField = uieditfield(app.defineoutputTab, 'numeric');
            app.Amplitude11EditField.HorizontalAlignment = 'center';
            app.Amplitude11EditField.Position = [449 246 112 22];

            % Create Amplitude12EditFieldLabel
            app.Amplitude12EditFieldLabel = uilabel(app.defineoutputTab);
            app.Amplitude12EditFieldLabel.HorizontalAlignment = 'right';
            app.Amplitude12EditFieldLabel.Position = [360 216 75 22];
            app.Amplitude12EditFieldLabel.Text = 'Amplitude 12';

            % Create Amplitude12EditField
            app.Amplitude12EditField = uieditfield(app.defineoutputTab, 'numeric');
            app.Amplitude12EditField.HorizontalAlignment = 'center';
            app.Amplitude12EditField.Position = [449 217 112 22];

            % Create Amplitude13EditFieldLabel
            app.Amplitude13EditFieldLabel = uilabel(app.defineoutputTab);
            app.Amplitude13EditFieldLabel.HorizontalAlignment = 'right';
            app.Amplitude13EditFieldLabel.Position = [360 184 80 22];
            app.Amplitude13EditFieldLabel.Text = 'Amplitude  13';

            % Create Amplitude13EditField
            app.Amplitude13EditField = uieditfield(app.defineoutputTab, 'numeric');
            app.Amplitude13EditField.HorizontalAlignment = 'center';
            app.Amplitude13EditField.Position = [449 185 112 22];

            % Create Amplitude14EditFieldLabel
            app.Amplitude14EditFieldLabel = uilabel(app.defineoutputTab);
            app.Amplitude14EditFieldLabel.HorizontalAlignment = 'right';
            app.Amplitude14EditFieldLabel.Position = [360 151 80 22];
            app.Amplitude14EditFieldLabel.Text = 'Amplitude  14';

            % Create Amplitude14EditField
            app.Amplitude14EditField = uieditfield(app.defineoutputTab, 'numeric');
            app.Amplitude14EditField.HorizontalAlignment = 'center';
            app.Amplitude14EditField.Position = [449 151 112 22];

            % Create Amplitude15EditFieldLabel
            app.Amplitude15EditFieldLabel = uilabel(app.defineoutputTab);
            app.Amplitude15EditFieldLabel.HorizontalAlignment = 'right';
            app.Amplitude15EditFieldLabel.Position = [360 123 75 22];
            app.Amplitude15EditFieldLabel.Text = 'Amplitude 15';

            % Create Amplitude15EditField
            app.Amplitude15EditField = uieditfield(app.defineoutputTab, 'numeric');
            app.Amplitude15EditField.HorizontalAlignment = 'center';
            app.Amplitude15EditField.Position = [449 123 112 22];

            % Create Amplitude16EditFieldLabel
            app.Amplitude16EditFieldLabel = uilabel(app.defineoutputTab);
            app.Amplitude16EditFieldLabel.HorizontalAlignment = 'right';
            app.Amplitude16EditFieldLabel.Position = [360 91 80 22];
            app.Amplitude16EditFieldLabel.Text = 'Amplitude  16';

            % Create Amplitude16EditField
            app.Amplitude16EditField = uieditfield(app.defineoutputTab, 'numeric');
            app.Amplitude16EditField.HorizontalAlignment = 'center';
            app.Amplitude16EditField.Position = [449 90 112 22];

            % Create DefineindividualoutputamplitudeLabel
            app.DefineindividualoutputamplitudeLabel = uilabel(app.defineoutputTab);
            app.DefineindividualoutputamplitudeLabel.FontSize = 20;
            app.DefineindividualoutputamplitudeLabel.FontWeight = 'bold';
            app.DefineindividualoutputamplitudeLabel.Position = [131 362 338 23];
            app.DefineindividualoutputamplitudeLabel.Text = 'Define individual output amplitude';

            % Create uploadTab
            app.uploadTab = uitab(app.TabGroup);
            app.uploadTab.Title = '3.upload';

            % Create Current1EditField
            app.Current1EditField = uieditfield(app.uploadTab, 'numeric');
            app.Current1EditField.Editable = 'off';
            app.Current1EditField.HorizontalAlignment = 'center';
            app.Current1EditField.BackgroundColor = [0.5137 0.9216 0.3686];
            app.Current1EditField.Position = [130 305 100 22];

            % Create Current2EditFieldLabel
            app.Current2EditFieldLabel = uilabel(app.uploadTab);
            app.Current2EditFieldLabel.HorizontalAlignment = 'right';
            app.Current2EditFieldLabel.Position = [43 274 72 23];
            app.Current2EditFieldLabel.Text = 'Current  2';

            % Create Current2EditField
            app.Current2EditField = uieditfield(app.uploadTab, 'numeric');
            app.Current2EditField.Editable = 'off';
            app.Current2EditField.HorizontalAlignment = 'center';
            app.Current2EditField.BackgroundColor = [0.5137 0.9216 0.3686];
            app.Current2EditField.Position = [130 274 100 22];

            % Create Current3EditFieldLabel
            app.Current3EditFieldLabel = uilabel(app.uploadTab);
            app.Current3EditFieldLabel.HorizontalAlignment = 'right';
            app.Current3EditFieldLabel.Position = [43 244 72 23];
            app.Current3EditFieldLabel.Text = 'Current   3';

            % Create Current3EditField
            app.Current3EditField = uieditfield(app.uploadTab, 'numeric');
            app.Current3EditField.Editable = 'off';
            app.Current3EditField.HorizontalAlignment = 'center';
            app.Current3EditField.BackgroundColor = [0.5137 0.9216 0.3686];
            app.Current3EditField.Position = [130 243 100 22];

            % Create Current4EditFieldLabel
            app.Current4EditFieldLabel = uilabel(app.uploadTab);
            app.Current4EditFieldLabel.HorizontalAlignment = 'right';
            app.Current4EditFieldLabel.Position = [43 214 72 23];
            app.Current4EditFieldLabel.Text = 'Current  4';

            % Create Current4EditField
            app.Current4EditField = uieditfield(app.uploadTab, 'numeric');
            app.Current4EditField.Editable = 'off';
            app.Current4EditField.HorizontalAlignment = 'center';
            app.Current4EditField.BackgroundColor = [0.5137 0.9216 0.3686];
            app.Current4EditField.Position = [130 212 100 22];

            % Create Current5EditFieldLabel
            app.Current5EditFieldLabel = uilabel(app.uploadTab);
            app.Current5EditFieldLabel.HorizontalAlignment = 'right';
            app.Current5EditFieldLabel.Position = [43 184 72 23];
            app.Current5EditFieldLabel.Text = 'Current  5';

            % Create Current5EditField
            app.Current5EditField = uieditfield(app.uploadTab, 'numeric');
            app.Current5EditField.Editable = 'off';
            app.Current5EditField.HorizontalAlignment = 'center';
            app.Current5EditField.BackgroundColor = [0.5137 0.9216 0.3686];
            app.Current5EditField.Position = [130 181 100 22];

            % Create Current6EditFieldLabel
            app.Current6EditFieldLabel = uilabel(app.uploadTab);
            app.Current6EditFieldLabel.HorizontalAlignment = 'right';
            app.Current6EditFieldLabel.Position = [43 154 72 23];
            app.Current6EditFieldLabel.Text = 'Current  6';

            % Create Current6EditField
            app.Current6EditField = uieditfield(app.uploadTab, 'numeric');
            app.Current6EditField.Editable = 'off';
            app.Current6EditField.HorizontalAlignment = 'center';
            app.Current6EditField.BackgroundColor = [0.5137 0.9216 0.3686];
            app.Current6EditField.Position = [130 150 100 22];

            % Create Current7EditFieldLabel
            app.Current7EditFieldLabel = uilabel(app.uploadTab);
            app.Current7EditFieldLabel.HorizontalAlignment = 'right';
            app.Current7EditFieldLabel.Position = [43 124 72 23];
            app.Current7EditFieldLabel.Text = 'Current  7';

            % Create Current7EditField
            app.Current7EditField = uieditfield(app.uploadTab, 'numeric');
            app.Current7EditField.Editable = 'off';
            app.Current7EditField.HorizontalAlignment = 'center';
            app.Current7EditField.BackgroundColor = [0.5137 0.9216 0.3686];
            app.Current7EditField.Position = [130 120 100 22];

            % Create Current8EditFieldLabel
            app.Current8EditFieldLabel = uilabel(app.uploadTab);
            app.Current8EditFieldLabel.HorizontalAlignment = 'right';
            app.Current8EditFieldLabel.Position = [43 95 72 23];
            app.Current8EditFieldLabel.Text = 'Current  8';

            % Create Current8EditField
            app.Current8EditField = uieditfield(app.uploadTab, 'numeric');
            app.Current8EditField.Editable = 'off';
            app.Current8EditField.HorizontalAlignment = 'center';
            app.Current8EditField.BackgroundColor = [0.5137 0.9216 0.3686];
            app.Current8EditField.Position = [130 90 100 22];

            % Create Current9EditFieldLabel
            app.Current9EditFieldLabel = uilabel(app.uploadTab);
            app.Current9EditFieldLabel.HorizontalAlignment = 'right';
            app.Current9EditFieldLabel.Position = [349 306 79 23];
            app.Current9EditFieldLabel.Text = 'Current    9';

            % Create Current9EditField
            app.Current9EditField = uieditfield(app.uploadTab, 'numeric');
            app.Current9EditField.Editable = 'off';
            app.Current9EditField.HorizontalAlignment = 'center';
            app.Current9EditField.BackgroundColor = [0.5137 0.9216 0.3686];
            app.Current9EditField.Position = [443 306 100 22];

            % Create Current10EditFieldLabel
            app.Current10EditFieldLabel = uilabel(app.uploadTab);
            app.Current10EditFieldLabel.HorizontalAlignment = 'right';
            app.Current10EditFieldLabel.Position = [350 275 78 23];
            app.Current10EditFieldLabel.Text = 'Current  10';

            % Create Current10EditField
            app.Current10EditField = uieditfield(app.uploadTab, 'numeric');
            app.Current10EditField.Editable = 'off';
            app.Current10EditField.HorizontalAlignment = 'center';
            app.Current10EditField.BackgroundColor = [0.5137 0.9216 0.3686];
            app.Current10EditField.Position = [443 276 100 22];

            % Create Current11EditFieldLabel
            app.Current11EditFieldLabel = uilabel(app.uploadTab);
            app.Current11EditFieldLabel.HorizontalAlignment = 'right';
            app.Current11EditFieldLabel.Position = [350 244 78 23];
            app.Current11EditFieldLabel.Text = 'Current  11';

            % Create Current11EditField
            app.Current11EditField = uieditfield(app.uploadTab, 'numeric');
            app.Current11EditField.Editable = 'off';
            app.Current11EditField.HorizontalAlignment = 'center';
            app.Current11EditField.BackgroundColor = [0.5059 0.9216 0.3686];
            app.Current11EditField.Position = [443 246 100 22];

            % Create Current12EditFieldLabel
            app.Current12EditFieldLabel = uilabel(app.uploadTab);
            app.Current12EditFieldLabel.HorizontalAlignment = 'right';
            app.Current12EditFieldLabel.Position = [350 213 78 23];
            app.Current12EditFieldLabel.Text = 'Current  12';

            % Create Current12EditField
            app.Current12EditField = uieditfield(app.uploadTab, 'numeric');
            app.Current12EditField.Editable = 'off';
            app.Current12EditField.HorizontalAlignment = 'center';
            app.Current12EditField.BackgroundColor = [0.5137 0.9216 0.3686];
            app.Current12EditField.Position = [443 216 100 22];

            % Create Current13EditFieldLabel
            app.Current13EditFieldLabel = uilabel(app.uploadTab);
            app.Current13EditFieldLabel.HorizontalAlignment = 'right';
            app.Current13EditFieldLabel.Position = [350 183 78 23];
            app.Current13EditFieldLabel.Text = 'Current  13';

            % Create Current13EditField
            app.Current13EditField = uieditfield(app.uploadTab, 'numeric');
            app.Current13EditField.Editable = 'off';
            app.Current13EditField.HorizontalAlignment = 'center';
            app.Current13EditField.BackgroundColor = [0.5137 0.9216 0.3686];
            app.Current13EditField.Position = [443 186 100 22];

            % Create Current14EditFieldLabel
            app.Current14EditFieldLabel = uilabel(app.uploadTab);
            app.Current14EditFieldLabel.HorizontalAlignment = 'right';
            app.Current14EditFieldLabel.Position = [350 153 78 23];
            app.Current14EditFieldLabel.Text = 'Current  14';

            % Create Current14EditField
            app.Current14EditField = uieditfield(app.uploadTab, 'numeric');
            app.Current14EditField.Editable = 'off';
            app.Current14EditField.HorizontalAlignment = 'center';
            app.Current14EditField.BackgroundColor = [0.5137 0.9216 0.3686];
            app.Current14EditField.Position = [443 157 100 22];

            % Create Current15EditFieldLabel
            app.Current15EditFieldLabel = uilabel(app.uploadTab);
            app.Current15EditFieldLabel.HorizontalAlignment = 'right';
            app.Current15EditFieldLabel.Position = [350 123 78 23];
            app.Current15EditFieldLabel.Text = 'Current  15';

            % Create Current15EditField
            app.Current15EditField = uieditfield(app.uploadTab, 'numeric');
            app.Current15EditField.Editable = 'off';
            app.Current15EditField.HorizontalAlignment = 'center';
            app.Current15EditField.BackgroundColor = [0.5137 0.9216 0.3686];
            app.Current15EditField.Position = [443 128 100 22];

            % Create uploadButton
            app.uploadButton = uibutton(app.uploadTab, 'push');
            app.uploadButton.ButtonPushedFcn = createCallbackFcn(app, @uploadButtonPushed, true);
            app.uploadButton.Position = [250 25 100 22];
            app.uploadButton.Text = {'upload'; ''};

            % Create ReadyLampLabel
            app.ReadyLampLabel = uilabel(app.uploadTab);
            app.ReadyLampLabel.HorizontalAlignment = 'right';
            app.ReadyLampLabel.Position = [389 44 40 22];
            app.ReadyLampLabel.Text = 'Ready';

            % Create ReadyLamp
            app.ReadyLamp = uilamp(app.uploadTab);
            app.ReadyLamp.Enable = 'off';
            app.ReadyLamp.Position = [444 44 20 20];

            % Create SendingLampLabel
            app.SendingLampLabel = uilabel(app.uploadTab);
            app.SendingLampLabel.HorizontalAlignment = 'right';
            app.SendingLampLabel.Position = [379 15 50 22];
            app.SendingLampLabel.Text = 'Sending';

            % Create SendingLamp
            app.SendingLamp = uilamp(app.uploadTab);
            app.SendingLamp.Enable = 'off';
            app.SendingLamp.Position = [444 15 20 20];
            app.SendingLamp.Color = [0.9294 0.6941 0.1255];

            % Create Current2EditFieldLabel_2
            app.Current2EditFieldLabel_2 = uilabel(app.uploadTab);
            app.Current2EditFieldLabel_2.HorizontalAlignment = 'right';
            app.Current2EditFieldLabel_2.Position = [43 305 72 23];
            app.Current2EditFieldLabel_2.Text = 'Current  1';

            % Create ConfirmuploadcurrentLabel
            app.ConfirmuploadcurrentLabel = uilabel(app.uploadTab);
            app.ConfirmuploadcurrentLabel.FontSize = 20;
            app.ConfirmuploadcurrentLabel.FontWeight = 'bold';
            app.ConfirmuploadcurrentLabel.Position = [186 362 229 23];
            app.ConfirmuploadcurrentLabel.Text = 'Confirm upload current';

            % Create resultsTab
            app.resultsTab = uitab(app.TabGroup);
            app.resultsTab.Title = '4.results';

            % Create UserOutputUIAxes
            app.UserOutputUIAxes = uiaxes(app.resultsTab);
            title(app.UserOutputUIAxes, 'User defined output amplitude')
            xlabel(app.UserOutputUIAxes, 'output no.')
            ylabel(app.UserOutputUIAxes, 'amplitude')
            app.UserOutputUIAxes.XLim = [1 15];
            app.UserOutputUIAxes.YTick = [0 1];
            app.UserOutputUIAxes.Position = [55 217 351 146];

            % Create PhaseCurrentUIAxes
            app.PhaseCurrentUIAxes = uiaxes(app.resultsTab);
            title(app.PhaseCurrentUIAxes, '')
            xlabel(app.PhaseCurrentUIAxes, 'current[A]')
            ylabel(app.PhaseCurrentUIAxes, 'phase shift[ÿ]')
            app.PhaseCurrentUIAxes.XLim = [0 0.2];
            app.PhaseCurrentUIAxes.YLim = [0 1];
            app.PhaseCurrentUIAxes.ZLim = [0 1];
            app.PhaseCurrentUIAxes.YTick = [0 0.5 1];
            app.PhaseCurrentUIAxes.NextPlot = 'add';
            app.PhaseCurrentUIAxes.Position = [44 49 362 146];

            % Create MZInumberButtonGroup
            app.MZInumberButtonGroup = uibuttongroup(app.resultsTab);
            app.MZInumberButtonGroup.SelectionChangedFcn = createCallbackFcn(app, @MZInumberButtonGroupSelectionChanged, true);
            app.MZInumberButtonGroup.TitlePosition = 'centertop';
            app.MZInumberButtonGroup.Title = 'MZI number ';
            app.MZInumberButtonGroup.Position = [432 18 122 357];

            % Create Button_2
            app.Button_2 = uitogglebutton(app.MZInumberButtonGroup);
            app.Button_2.Text = '1';
            app.Button_2.Position = [11 304 100 22];
            app.Button_2.Value = true;

            % Create Button_3
            app.Button_3 = uitogglebutton(app.MZInumberButtonGroup);
            app.Button_3.Text = '2';
            app.Button_3.Position = [11 283 100 22];

            % Create Button_4
            app.Button_4 = uitogglebutton(app.MZInumberButtonGroup);
            app.Button_4.Text = '3';
            app.Button_4.Position = [11 262 100 22];

            % Create Button_5
            app.Button_5 = uitogglebutton(app.MZInumberButtonGroup);
            app.Button_5.Text = '4';
            app.Button_5.Position = [11 241 100 22];

            % Create Button_6
            app.Button_6 = uitogglebutton(app.MZInumberButtonGroup);
            app.Button_6.Text = '5';
            app.Button_6.Position = [11 220 100 22];

            % Create Button_7
            app.Button_7 = uitogglebutton(app.MZInumberButtonGroup);
            app.Button_7.Text = '6';
            app.Button_7.Position = [11 199 100 22];

            % Create Button_8
            app.Button_8 = uitogglebutton(app.MZInumberButtonGroup);
            app.Button_8.Text = '7';
            app.Button_8.Position = [11 178 100 22];

            % Create Button_9
            app.Button_9 = uitogglebutton(app.MZInumberButtonGroup);
            app.Button_9.Text = '8';
            app.Button_9.Position = [11 157 100 22];

            % Create Button_10
            app.Button_10 = uitogglebutton(app.MZInumberButtonGroup);
            app.Button_10.Text = '9';
            app.Button_10.Position = [11 136 100 22];

            % Create Button_11
            app.Button_11 = uitogglebutton(app.MZInumberButtonGroup);
            app.Button_11.Text = '10';
            app.Button_11.Position = [11 115 100 22];

            % Create Button_12
            app.Button_12 = uitogglebutton(app.MZInumberButtonGroup);
            app.Button_12.Text = '11';
            app.Button_12.Position = [11 94 100 22];

            % Create Button_13
            app.Button_13 = uitogglebutton(app.MZInumberButtonGroup);
            app.Button_13.Text = '12';
            app.Button_13.Position = [11 73 100 22];

            % Create Button_14
            app.Button_14 = uitogglebutton(app.MZInumberButtonGroup);
            app.Button_14.Text = '13';
            app.Button_14.Position = [11 52 100 22];

            % Create Button_15
            app.Button_15 = uitogglebutton(app.MZInumberButtonGroup);
            app.Button_15.Text = '14';
            app.Button_15.Position = [11 31 100 22];

            % Create Button_16
            app.Button_16 = uitogglebutton(app.MZInumberButtonGroup);
            app.Button_16.Text = '15';
            app.Button_16.Position = [11 10 100 22];

            % Create ResultsLabel
            app.ResultsLabel = uilabel(app.resultsTab);
            app.ResultsLabel.FontSize = 20;
            app.ResultsLabel.FontWeight = 'bold';
            app.ResultsLabel.Position = [261 362 78 24];
            app.ResultsLabel.Text = 'Results';

            % Create AxesTitle
            app.AxesTitle = uilabel(app.resultsTab);
            app.AxesTitle.HorizontalAlignment = 'center';
            app.AxesTitle.FontWeight = 'bold';
            app.AxesTitle.Position = [107 175 247 43];
            app.AxesTitle.Text = 'Phase vs Current for MZI no. 1';

            % Create NEWCalibrationButton
            app.NEWCalibrationButton = uibutton(app.resultsTab, 'push');
            app.NEWCalibrationButton.ButtonPushedFcn = createCallbackFcn(app, @NEWCalibrationButtonPushed, true);
            app.NEWCalibrationButton.Position = [91 18 104 22];
            app.NEWCalibrationButton.Text = 'NEW Calibration';

            % Create NEWoutputButton
            app.NEWoutputButton = uibutton(app.resultsTab, 'push');
            app.NEWoutputButton.ButtonPushedFcn = createCallbackFcn(app, @NEWoutputButtonPushed, true);
            app.NEWoutputButton.Position = [290 18 100 22];
            app.NEWoutputButton.Text = 'NEW output';

            % Create FunctionforMZInotdefinedLabel
            app.FunctionforMZInotdefinedLabel = uilabel(app.resultsTab);
            app.FunctionforMZInotdefinedLabel.FontSize = 15;
            app.FunctionforMZInotdefinedLabel.FontWeight = 'bold';
            app.FunctionforMZInotdefinedLabel.FontColor = [1 0 0];
            app.FunctionforMZInotdefinedLabel.Visible = 'off';
            app.FunctionforMZInotdefinedLabel.Position = [145 133 209 22];
            app.FunctionforMZInotdefinedLabel.Text = 'Function for MZI not defined';

            % Show the figure after all components are created
            app.UIFigure.Visible = 'on';
        end
    end

    % App creation and deletion
    methods (Access = public)

        % Construct app
        function app = GUI_exported

            % Create UIFigure and components
            createComponents(app)

            % Register the app with App Designer
            registerApp(app, app.UIFigure)

            if nargout == 0
                clear app
            end
        end

        % Code that executes before app deletion
        function delete(app)

            % Delete UIFigure when app is deleted
            delete(app.UIFigure)
        end
    end
end