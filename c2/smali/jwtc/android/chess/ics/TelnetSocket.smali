.class public Ljwtc/android/chess/ics/TelnetSocket;
.super Ljwtc/android/timeseal/TimesealingSocket;
.source "TelnetSocket.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljwtc/android/chess/ics/TelnetSocket$ATsendString;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TelnetSocket"

.field protected static _inBytes:[B

.field protected static _outBytes:[B


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 19
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Ljwtc/android/timeseal/TimesealingSocket;-><init>(Ljava/net/InetAddress;I)V

    const/16 p1, 0x800

    new-array p1, p1, [B

    .line 22
    sput-object p1, Ljwtc/android/chess/ics/TelnetSocket;->_inBytes:[B

    const/16 p1, 0x80

    new-array p1, p1, [B

    .line 23
    sput-object p1, Ljwtc/android/chess/ics/TelnetSocket;->_outBytes:[B

    return-void
.end method


# virtual methods
.method public readString()Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    .line 33
    :try_start_0
    invoke-virtual {p0}, Ljwtc/android/chess/ics/TelnetSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 35
    sget-object v2, Ljwtc/android/chess/ics/TelnetSocket;->_inBytes:[B

    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-lez v1, :cond_0

    .line 37
    new-instance v2, Ljava/lang/String;

    sget-object v3, Ljwtc/android/chess/ics/TelnetSocket;->_inBytes:[B

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4, v1}, Ljava/lang/String;-><init>([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    :cond_0
    return-object v0

    :catch_0
    move-exception v1

    .line 41
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "readString "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TelnetSocket"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public sendString(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 49
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 50
    sget-object v2, Ljwtc/android/chess/ics/TelnetSocket;->_outBytes:[B

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 55
    :cond_0
    new-instance v1, Ljwtc/android/chess/ics/TelnetSocket$ATsendString;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Ljwtc/android/chess/ics/TelnetSocket$ATsendString;-><init>(Ljwtc/android/chess/ics/TelnetSocket;Ljwtc/android/chess/ics/TelnetSocket$1;)V

    const/4 v2, 0x1

    :try_start_0
    new-array v2, v2, [Ljava/lang/String;

    aput-object p1, v2, v0

    .line 57
    invoke-virtual {v1, v2}, Ljwtc/android/chess/ics/TelnetSocket$ATsendString;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/AsyncTask;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 61
    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception p1

    .line 59
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_1
    return v0
.end method
