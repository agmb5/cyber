.class Ljwtc/android/chess/play/GameSettingsDialog$2;
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

.field final synthetic val$radioPly:Landroid/widget/RadioButton;

.field final synthetic val$radioTime:Landroid/widget/RadioButton;


# direct methods
.method constructor <init>(Ljwtc/android/chess/play/GameSettingsDialog;Landroid/widget/RadioButton;Landroid/widget/RadioButton;)V
    .locals 0

    .line 68
    iput-object p1, p0, Ljwtc/android/chess/play/GameSettingsDialog$2;->this$0:Ljwtc/android/chess/play/GameSettingsDialog;

    iput-object p2, p0, Ljwtc/android/chess/play/GameSettingsDialog$2;->val$radioTime:Landroid/widget/RadioButton;

    iput-object p3, p0, Ljwtc/android/chess/play/GameSettingsDialog$2;->val$radioPly:Landroid/widget/RadioButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 71
    iget-object p1, p0, Ljwtc/android/chess/play/GameSettingsDialog$2;->val$radioTime:Landroid/widget/RadioButton;

    iget-object v0, p0, Ljwtc/android/chess/play/GameSettingsDialog$2;->val$radioPly:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    return-void
.end method
