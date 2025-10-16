.class Ljwtc/android/chess/ics/ICSClient$10;
.super Ljava/lang/Object;
.source "ICSClient.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljwtc/android/chess/ics/ICSClient;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljwtc/android/chess/ics/ICSClient;


# direct methods
.method constructor <init>(Ljwtc/android/chess/ics/ICSClient;)V
    .locals 0

    .line 390
    iput-object p1, p0, Ljwtc/android/chess/ics/ICSClient$10;->this$0:Ljwtc/android/chess/ics/ICSClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 392
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x42

    if-eq p2, v0, :cond_1

    .line 393
    :cond_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p2

    const/4 p3, 0x6

    if-ne p2, p3, :cond_2

    .line 396
    :cond_1
    check-cast p1, Landroid/widget/EditText;

    .line 397
    iget-object p2, p0, Ljwtc/android/chess/ics/ICSClient$10;->this$0:Ljwtc/android/chess/ics/ICSClient;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p2, Ljwtc/android/chess/ics/ICSClient;->_sConsoleEditText:Ljava/lang/String;

    .line 399
    iget-object p2, p0, Ljwtc/android/chess/ics/ICSClient$10;->this$0:Ljwtc/android/chess/ics/ICSClient;

    iget-object p3, p2, Ljwtc/android/chess/ics/ICSClient;->_sConsoleEditText:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljwtc/android/chess/ics/ICSClient;->sendString(Ljava/lang/String;)V

    const-string p2, ""

    .line 400
    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method
