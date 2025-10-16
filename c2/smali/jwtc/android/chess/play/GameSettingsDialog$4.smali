.class Ljwtc/android/chess/play/GameSettingsDialog$4;
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


# direct methods
.method constructor <init>(Ljwtc/android/chess/play/GameSettingsDialog;)V
    .locals 0

    .line 101
    iput-object p1, p0, Ljwtc/android/chess/play/GameSettingsDialog$4;->this$0:Ljwtc/android/chess/play/GameSettingsDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 104
    iget-object p1, p0, Ljwtc/android/chess/play/GameSettingsDialog$4;->this$0:Ljwtc/android/chess/play/GameSettingsDialog;

    invoke-virtual {p1}, Ljwtc/android/chess/play/GameSettingsDialog;->dismiss()V

    return-void
.end method
