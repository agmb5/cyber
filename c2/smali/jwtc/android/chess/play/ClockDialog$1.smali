.class Ljwtc/android/chess/play/ClockDialog$1;
.super Ljava/lang/Object;
.source "ClockDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljwtc/android/chess/play/ClockDialog;-><init>(Landroid/content/Context;Ljwtc/android/chess/helpers/ResultDialogListener;ILandroid/content/SharedPreferences;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljwtc/android/chess/play/ClockDialog;

.field final synthetic val$editIncrement:Landroid/widget/EditText;

.field final synthetic val$editMinutes:Landroid/widget/EditText;

.field final synthetic val$prefs:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Ljwtc/android/chess/play/ClockDialog;Landroid/content/SharedPreferences;Landroid/widget/EditText;Landroid/widget/EditText;)V
    .locals 0

    .line 31
    iput-object p1, p0, Ljwtc/android/chess/play/ClockDialog$1;->this$0:Ljwtc/android/chess/play/ClockDialog;

    iput-object p2, p0, Ljwtc/android/chess/play/ClockDialog$1;->val$prefs:Landroid/content/SharedPreferences;

    iput-object p3, p0, Ljwtc/android/chess/play/ClockDialog$1;->val$editMinutes:Landroid/widget/EditText;

    iput-object p4, p0, Ljwtc/android/chess/play/ClockDialog$1;->val$editIncrement:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 36
    :try_start_0
    iget-object p1, p0, Ljwtc/android/chess/play/ClockDialog$1;->val$prefs:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 38
    iget-object v0, p0, Ljwtc/android/chess/play/ClockDialog$1;->val$editMinutes:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    const-wide/32 v2, 0xea60

    mul-long v0, v0, v2

    .line 39
    iget-object v2, p0, Ljwtc/android/chess/play/ClockDialog$1;->val$editIncrement:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0x3e8

    mul-long v2, v2, v4

    const-string v4, "clockWhiteMillies"

    .line 41
    invoke-interface {p1, v4, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    const-string v4, "clockBlackMillies"

    .line 42
    invoke-interface {p1, v4, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    const-string v0, "clockIncrement"

    .line 43
    invoke-interface {p1, v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    const-string v0, "clockStartTime"

    .line 44
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 46
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 48
    iget-object p1, p0, Ljwtc/android/chess/play/ClockDialog$1;->this$0:Ljwtc/android/chess/play/ClockDialog;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-static {p1, v0}, Ljwtc/android/chess/play/ClockDialog;->access$000(Ljwtc/android/chess/play/ClockDialog;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    :catch_0
    iget-object p1, p0, Ljwtc/android/chess/play/ClockDialog$1;->this$0:Ljwtc/android/chess/play/ClockDialog;

    invoke-virtual {p1}, Ljwtc/android/chess/play/ClockDialog;->dismiss()V

    return-void
.end method
