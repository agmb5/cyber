.class Ljwtc/android/chess/play/GameSettingsDialog$3;
.super Ljava/lang/Object;
.source "GameSettingsDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljwtc/android/chess/play/GameSettingsDialog;-><init>(Landroid/content/Context;Ljwtc/android/chess/helpers/ResultDialogListener;ILandroid/content/SharedPreferences;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljwtc/android/chess/play/GameSettingsDialog;

.field final synthetic val$prefs:Landroid/content/SharedPreferences;

.field final synthetic val$radioAndroid:Landroid/widget/RadioButton;

.field final synthetic val$radioTime:Landroid/widget/RadioButton;

.field final synthetic val$radioWhite:Landroid/widget/RadioButton;

.field final synthetic val$spinnerLevelPly:Landroid/widget/Spinner;

.field final synthetic val$spinnerLevelTime:Landroid/widget/Spinner;


# direct methods
.method constructor <init>(Ljwtc/android/chess/play/GameSettingsDialog;Landroid/content/SharedPreferences;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/Spinner;Landroid/widget/Spinner;)V
    .locals 0

    .line 79
    iput-object p1, p0, Ljwtc/android/chess/play/GameSettingsDialog$3;->this$0:Ljwtc/android/chess/play/GameSettingsDialog;

    iput-object p2, p0, Ljwtc/android/chess/play/GameSettingsDialog$3;->val$prefs:Landroid/content/SharedPreferences;

    iput-object p3, p0, Ljwtc/android/chess/play/GameSettingsDialog$3;->val$radioAndroid:Landroid/widget/RadioButton;

    iput-object p4, p0, Ljwtc/android/chess/play/GameSettingsDialog$3;->val$radioWhite:Landroid/widget/RadioButton;

    iput-object p5, p0, Ljwtc/android/chess/play/GameSettingsDialog$3;->val$radioTime:Landroid/widget/RadioButton;

    iput-object p6, p0, Ljwtc/android/chess/play/GameSettingsDialog$3;->val$spinnerLevelTime:Landroid/widget/Spinner;

    iput-object p7, p0, Ljwtc/android/chess/play/GameSettingsDialog$3;->val$spinnerLevelPly:Landroid/widget/Spinner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 83
    iget-object p1, p0, Ljwtc/android/chess/play/GameSettingsDialog$3;->val$prefs:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 85
    iget-object v0, p0, Ljwtc/android/chess/play/GameSettingsDialog$3;->val$radioAndroid:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    const-string v1, "opponent"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 86
    iget-object v0, p0, Ljwtc/android/chess/play/GameSettingsDialog$3;->val$radioWhite:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    const-string v1, "myTurn"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 88
    iget-object v0, p0, Ljwtc/android/chess/play/GameSettingsDialog$3;->val$radioTime:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    const-string v2, "levelMode"

    invoke-interface {p1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 89
    iget-object v0, p0, Ljwtc/android/chess/play/GameSettingsDialog$3;->val$spinnerLevelTime:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    add-int/2addr v0, v1

    const-string v2, "level"

    invoke-interface {p1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 90
    iget-object v0, p0, Ljwtc/android/chess/play/GameSettingsDialog$3;->val$spinnerLevelPly:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    add-int/2addr v0, v1

    const-string v1, "levelPly"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 92
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 94
    iget-object p1, p0, Ljwtc/android/chess/play/GameSettingsDialog$3;->this$0:Ljwtc/android/chess/play/GameSettingsDialog;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-static {p1, v0}, Ljwtc/android/chess/play/GameSettingsDialog;->access$000(Ljwtc/android/chess/play/GameSettingsDialog;Landroid/os/Bundle;)V

    .line 96
    iget-object p1, p0, Ljwtc/android/chess/play/GameSettingsDialog$3;->this$0:Ljwtc/android/chess/play/GameSettingsDialog;

    invoke-virtual {p1}, Ljwtc/android/chess/play/GameSettingsDialog;->dismiss()V

    return-void
.end method
