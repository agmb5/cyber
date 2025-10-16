.class Ljwtc/android/chess/ics/TelnetSocket$ATsendString;
.super Landroid/os/AsyncTask;
.source "TelnetSocket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljwtc/android/chess/ics/TelnetSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ATsendString"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljwtc/android/chess/ics/TelnetSocket;


# direct methods
.method private constructor <init>(Ljwtc/android/chess/ics/TelnetSocket;)V
    .locals 0

    .line 67
    iput-object p1, p0, Ljwtc/android/chess/ics/TelnetSocket$ATsendString;->this$0:Ljwtc/android/chess/ics/TelnetSocket;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ljwtc/android/chess/ics/TelnetSocket;Ljwtc/android/chess/ics/TelnetSocket$1;)V
    .locals 0

    .line 67
    invoke-direct {p0, p1}, Ljwtc/android/chess/ics/TelnetSocket$ATsendString;-><init>(Ljwtc/android/chess/ics/TelnetSocket;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 3

    const/4 v0, 0x0

    .line 73
    :try_start_0
    iget-object v1, p0, Ljwtc/android/chess/ics/TelnetSocket$ATsendString;->this$0:Ljwtc/android/chess/ics/TelnetSocket;

    invoke-virtual {v1}, Ljwtc/android/chess/ics/TelnetSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    sget-object v2, Ljwtc/android/chess/ics/TelnetSocket;->_outBytes:[B

    aget-object p1, p1, v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v1, v2, v0, p1}, Ljava/io/OutputStream;->write([BII)V

    .line 74
    iget-object p1, p0, Ljwtc/android/chess/ics/TelnetSocket$ATsendString;->this$0:Ljwtc/android/chess/ics/TelnetSocket;

    invoke-virtual {p1}, Ljwtc/android/chess/ics/TelnetSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    const/4 p1, 0x1

    .line 76
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 78
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendString: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "TelnetSocket"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 67
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljwtc/android/chess/ics/TelnetSocket$ATsendString;->doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 0

    .line 86
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 67
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Ljwtc/android/chess/ics/TelnetSocket$ATsendString;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
