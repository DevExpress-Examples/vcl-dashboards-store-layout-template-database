object MainForm: TMainForm
  Left = 0
  Top = 0
  Caption = 'DevExpress VCL: Store Dashboard Layout in a Database'
  ClientHeight = 536
  ClientWidth = 843
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  TextHeight = 15
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 843
    Height = 536
    Align = alClient
    TabOrder = 0
    AutoSize = True
    ExplicitWidth = 837
    ExplicitHeight = 519
    object btnDesign: TcxButton
      Left = 287
      Top = 12
      Width = 269
      Height = 25
      Caption = 'Design Dashboard'
      SpeedButtonOptions.CanBeFocused = False
      TabOrder = 1
      OnClick = btnDesignClick
    end
    object cxGrid2: TcxGrid
      Left = 12
      Top = 44
      Width = 819
      Height = 133
      TabOrder = 3
      object gvLayouts: TcxGridDBTableView
        Navigator.Buttons.First.Visible = False
        Navigator.Buttons.PriorPage.Visible = False
        Navigator.Buttons.NextPage.Visible = False
        Navigator.Buttons.Last.Visible = False
        Navigator.Buttons.Insert.Visible = False
        Navigator.Buttons.Edit.Visible = False
        Navigator.Buttons.Post.Visible = True
        Navigator.Buttons.Cancel.Visible = False
        Navigator.Buttons.Refresh.Visible = False
        Navigator.Buttons.SaveBookmark.Visible = False
        Navigator.Buttons.GotoBookmark.Visible = False
        Navigator.Buttons.Filter.Visible = False
        Navigator.Visible = True
        OnEditValueChanged = gvLayoutsEditValueChanged
        OnFocusedRecordChanged = gvLayoutsFocusedRecordChanged
        DataController.DataSource = DataModule1.dsLayouts
        OptionsData.CancelOnExit = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Inserting = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object gvLayoutsRecId: TcxGridDBColumn
          DataBinding.FieldName = 'RecId'
          Visible = False
        end
        object gvLayoutsName: TcxGridDBColumn
          Caption = 'Dashboard Name'
          DataBinding.FieldName = 'Name'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.OnValidate = gvLayoutsNamePropertiesValidate
          Width = 246
        end
        object gvLayoutsLayout: TcxGridDBColumn
          Caption = 'Dashboard Layout'
          DataBinding.FieldName = 'Layout'
          Options.Editing = False
          Width = 275
        end
        object gvLayoutsColumn1: TcxGridDBColumn
          Caption = 'Dashboard State'
          DataBinding.FieldName = 'State'
          Width = 269
        end
      end
      object cxGrid2Level1: TcxGridLevel
        GridView = gvLayouts
      end
    end
    object dxDashboardControl1: TdxDashboardControl
      Left = 12
      Top = 184
      Width = 819
      Height = 340
      TabOrder = 4
      OnLayoutChanged = dxDashboardControl1LayoutChanged
      OnStateChanged = dxDashboardControl1StateChanged
      DesignSize = (
        819
        340)
    end
    object btnNewDashboard: TcxButton
      Left = 12
      Top = 12
      Width = 268
      Height = 25
      Caption = 'New Dashboard'
      TabOrder = 0
      OnClick = btnNewDashboardClick
    end
    object btnDelete: TcxButton
      Left = 563
      Top = 12
      Width = 268
      Height = 25
      Caption = 'Delete Dashboard'
      TabOrder = 2
      OnClick = btnDeleteClick
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object liBtnShowDesigner: TdxLayoutItem
      Parent = lgButtons
      AlignHorz = ahClient
      CaptionOptions.Text = 'btnShowDesigner'
      CaptionOptions.Visible = False
      Control = btnDesign
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object liGrid: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'cxGrid2'
      CaptionOptions.Visible = False
      Control = cxGrid2
      ControlOptions.OriginalHeight = 133
      ControlOptions.OriginalWidth = 377
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object liDashboardControl: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      AlignVert = avClient
      Control = dxDashboardControl1
      ControlOptions.OriginalHeight = 449
      ControlOptions.OriginalWidth = 733
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object liBtnNew: TdxLayoutItem
      Parent = lgButtons
      AlignHorz = ahClient
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = btnNewDashboard
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lgButtons: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'New Group'
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object liBtnDelete: TdxLayoutItem
      Parent = lgButtons
      AlignHorz = ahClient
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = btnDelete
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 2
    end
  end
end
