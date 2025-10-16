.class Ljwtc/android/chess/ics/ICSClient$2;
.super Ljava/lang/Object;
.source "ICSClient.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 186
    iput-object p1, p0, Ljwtc/android/chess/ics/ICSClient$2;->this$0:Ljwtc/android/chess/ics/ICSClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 191
    iget-object p1, p0, Ljwtc/android/chess/ics/ICSClient$2;->this$0:Ljwtc/android/chess/ics/ICSClient;

    invoke-static {p1}, Ljwtc/android/chess/ics/ICSClient;->access$100(Ljwtc/android/chess/ics/ICSClient;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 192
    iget-object p1, p0, Ljwtc/android/chess/ics/ICSClient$2;->this$0:Ljwtc/android/chess/ics/ICSClient;

    invoke-static {p1}, Ljwtc/android/chess/ics/ICSClient;->access$200(Ljwtc/android/chess/ics/ICSClient;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const-string p1, ""

    if-eq v3, p1, :cond_0

    if-eq v4, p1, :cond_0

    .line 202
    iget-object p1, p0, Ljwtc/android/chess/ics/ICSClient$2;->this$0:Ljwtc/android/chess/ics/ICSClient;

    invoke-virtual {p1}, Ljwtc/android/chess/ics/ICSClient;->setLoadingView()V

    .line 203
    iget-object p1, p0, Ljwtc/android/chess/ics/ICSClient$2;->this$0:Ljwtc/android/chess/ics/ICSClient;

    invoke-static {p1}, Ljwtc/android/chess/ics/ICSClient;->access$000(Ljwtc/android/chess/ics/ICSClient;)Ljwtc/android/chess/ics/ICSServer;

    move-result-object v0

    const/16 v2, 0x17

    const-string v1, "freechess.org"

    const-string v5, "fics% "

    invoke-virtual/range {v0 .. v5}, Ljwtc/android/chess/ics/ICSServer;->startSession(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-ne v3, p1, :cond_1

    .line 206
    iget-object v0, p0, Ljwtc/android/chess/ics/ICSClient$2;->this$0:Ljwtc/android/chess/ics/ICSClient;

    const v1, 0x7f0e0115

    invoke-virtual {v0, v1}, Ljwtc/android/chess/ics/ICSClient;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljwtc/android/chess/ics/ICSClient;->globalToast(Ljava/lang/String;)V

    :cond_1
    const-string v0, "guest"

    if-eq v3, v0, :cond_2

    if-ne v4, p1, :cond_2

    .line 209
    iget-object p1, p0, Ljwtc/android/chess/ics/ICSClient$2;->this$0:Ljwtc/android/chess/ics/ICSClient;

    const v0, 0x7f0e0116

    invoke-virtual {p1, v0}, Ljwtc/android/chess/ics/ICSClient;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljwtc/android/chess/ics/ICSClient;->globalToast(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method
