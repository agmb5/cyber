.class Ljwtc/android/chess/ics/ICSServer$1;
.super Ljava/lang/Object;
.source "ICSServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljwtc/android/chess/ics/ICSServer;->startSession(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljwtc/android/chess/ics/ICSServer;

.field final synthetic val$port:I

.field final synthetic val$server:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljwtc/android/chess/ics/ICSServer;Ljava/lang/String;I)V
    .locals 0

    .line 77
    iput-object p1, p0, Ljwtc/android/chess/ics/ICSServer$1;->this$0:Ljwtc/android/chess/ics/ICSServer;

    iput-object p2, p0, Ljwtc/android/chess/ics/ICSServer$1;->val$server:Ljava/lang/String;

    iput p3, p0, Ljwtc/android/chess/ics/ICSServer$1;->val$port:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v0, 0x3

    .line 80
    :try_start_0
    iget-object v1, p0, Ljwtc/android/chess/ics/ICSServer$1;->this$0:Ljwtc/android/chess/ics/ICSServer;

    new-instance v2, Ljwtc/android/chess/ics/TelnetSocket;

    iget-object v3, p0, Ljwtc/android/chess/ics/ICSServer$1;->val$server:Ljava/lang/String;

    iget v4, p0, Ljwtc/android/chess/ics/ICSServer$1;->val$port:I

    invoke-direct {v2, v3, v4}, Ljwtc/android/chess/ics/TelnetSocket;-><init>(Ljava/lang/String;I)V

    invoke-static {v1, v2}, Ljwtc/android/chess/ics/ICSServer;->access$002(Ljwtc/android/chess/ics/ICSServer;Ljwtc/android/chess/ics/TelnetSocket;)Ljwtc/android/chess/ics/TelnetSocket;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 89
    :cond_0
    :goto_0
    :try_start_1
    iget-object v1, p0, Ljwtc/android/chess/ics/ICSServer$1;->this$0:Ljwtc/android/chess/ics/ICSServer;

    invoke-static {v1}, Ljwtc/android/chess/ics/ICSServer;->access$000(Ljwtc/android/chess/ics/ICSServer;)Ljwtc/android/chess/ics/TelnetSocket;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Ljwtc/android/chess/ics/ICSServer$1;->this$0:Ljwtc/android/chess/ics/ICSServer;

    invoke-static {v1}, Ljwtc/android/chess/ics/ICSServer;->access$000(Ljwtc/android/chess/ics/ICSServer;)Ljwtc/android/chess/ics/TelnetSocket;

    move-result-object v1

    invoke-virtual {v1}, Ljwtc/android/chess/ics/TelnetSocket;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 90
    iget-object v1, p0, Ljwtc/android/chess/ics/ICSServer$1;->this$0:Ljwtc/android/chess/ics/ICSServer;

    invoke-static {v1}, Ljwtc/android/chess/ics/ICSServer;->access$000(Ljwtc/android/chess/ics/ICSServer;)Ljwtc/android/chess/ics/TelnetSocket;

    move-result-object v1

    invoke-virtual {v1}, Ljwtc/android/chess/ics/TelnetSocket;->readString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 94
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 95
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    const/4 v3, 0x1

    .line 96
    iput v3, v2, Landroid/os/Message;->what:I

    .line 97
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "buffer"

    .line 98
    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    invoke-virtual {v2, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 100
    iget-object v1, p0, Ljwtc/android/chess/ics/ICSServer$1;->this$0:Ljwtc/android/chess/ics/ICSServer;

    iget-object v1, v1, Ljwtc/android/chess/ics/ICSServer;->threadHandler:Ljwtc/android/chess/ics/ICSThreadMessageHandler;

    invoke-virtual {v1, v2}, Ljwtc/android/chess/ics/ICSThreadMessageHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_1
    const-string v1, "ICSServer"

    const-string v2, "End of workerTelnet"

    .line 103
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-object v1, p0, Ljwtc/android/chess/ics/ICSServer$1;->this$0:Ljwtc/android/chess/ics/ICSServer;

    invoke-virtual {v1}, Ljwtc/android/chess/ics/ICSServer;->cancelKeepAliveTimer()V

    .line 106
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 107
    iput v0, v1, Landroid/os/Message;->what:I

    .line 108
    iget-object v0, p0, Ljwtc/android/chess/ics/ICSServer$1;->this$0:Ljwtc/android/chess/ics/ICSServer;

    iget-object v0, v0, Ljwtc/android/chess/ics/ICSServer;->threadHandler:Ljwtc/android/chess/ics/ICSThreadMessageHandler;

    invoke-virtual {v0, v1}, Ljwtc/android/chess/ics/ICSThreadMessageHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 111
    :catch_0
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x2

    .line 112
    iput v1, v0, Landroid/os/Message;->what:I

    .line 113
    iget-object v1, p0, Ljwtc/android/chess/ics/ICSServer$1;->this$0:Ljwtc/android/chess/ics/ICSServer;

    iget-object v1, v1, Ljwtc/android/chess/ics/ICSServer;->threadHandler:Ljwtc/android/chess/ics/ICSThreadMessageHandler;

    invoke-virtual {v1, v0}, Ljwtc/android/chess/ics/ICSThreadMessageHandler;->sendMessage(Landroid/os/Message;)Z

    :goto_1
    return-void

    .line 82
    :catch_1
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 83
    iput v0, v1, Landroid/os/Message;->what:I

    .line 84
    iget-object v0, p0, Ljwtc/android/chess/ics/ICSServer$1;->this$0:Ljwtc/android/chess/ics/ICSServer;

    iget-object v0, v0, Ljwtc/android/chess/ics/ICSServer;->threadHandler:Ljwtc/android/chess/ics/ICSThreadMessageHandler;

    invoke-virtual {v0, v1}, Ljwtc/android/chess/ics/ICSThreadMessageHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
