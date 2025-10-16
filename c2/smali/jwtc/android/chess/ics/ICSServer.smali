.class public Ljwtc/android/chess/ics/ICSServer;
.super Landroid/app/Service;
.source "ICSServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljwtc/android/chess/ics/ICSServer$KeepAliveHandler;,
        Ljwtc/android/chess/ics/ICSServer$LocalBinder;
    }
.end annotation


# static fields
.field protected static final EXPECT_LOGIN_PROMPT:I = 0x1

.field protected static final EXPECT_LOGIN_RESPONSE:I = 0x2

.field protected static final EXPECT_PASSWORD_RESPONSE:I = 0x3

.field protected static final EXPECT_PROMPT:I = 0x4

.field protected static final TAG:Ljava/lang/String; = "ICSServer"


# instance fields
.field private _socket:Ljwtc/android/chess/ics/TelnetSocket;

.field private _workerTelnet:Ljava/lang/Thread;

.field protected currentBuffer:Ljava/lang/String;

.field protected expectingState:I

.field protected handle:Ljava/lang/String;

.field protected icsPatterns:Ljwtc/android/chess/ics/ICSPatterns;

.field private keepAliveTimerHandler:Landroid/os/Handler;

.field private keepAlivetimer:Ljava/util/Timer;

.field private listeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljwtc/android/chess/ics/ICSListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mBinder:Landroid/os/IBinder;

.field protected opponent:Ljava/lang/String;

.field protected password:Ljava/lang/String;

.field protected prompt:Ljava/lang/String;

.field protected threadHandler:Ljwtc/android/chess/ics/ICSThreadMessageHandler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 28
    new-instance v0, Ljwtc/android/chess/ics/ICSServer$LocalBinder;

    invoke-direct {v0, p0}, Ljwtc/android/chess/ics/ICSServer$LocalBinder;-><init>(Ljwtc/android/chess/ics/ICSServer;)V

    iput-object v0, p0, Ljwtc/android/chess/ics/ICSServer;->mBinder:Landroid/os/IBinder;

    .line 29
    new-instance v0, Ljwtc/android/chess/ics/ICSServer$KeepAliveHandler;

    invoke-direct {v0, p0}, Ljwtc/android/chess/ics/ICSServer$KeepAliveHandler;-><init>(Ljwtc/android/chess/ics/ICSServer;)V

    iput-object v0, p0, Ljwtc/android/chess/ics/ICSServer;->keepAliveTimerHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Ljwtc/android/chess/ics/ICSServer;->keepAlivetimer:Ljava/util/Timer;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljwtc/android/chess/ics/ICSServer;->listeners:Ljava/util/ArrayList;

    .line 34
    new-instance v0, Ljwtc/android/chess/ics/ICSThreadMessageHandler;

    invoke-direct {v0, p0}, Ljwtc/android/chess/ics/ICSThreadMessageHandler;-><init>(Ljwtc/android/chess/ics/ICSServer;)V

    iput-object v0, p0, Ljwtc/android/chess/ics/ICSServer;->threadHandler:Ljwtc/android/chess/ics/ICSThreadMessageHandler;

    .line 41
    new-instance v0, Ljwtc/android/chess/ics/ICSPatterns;

    invoke-direct {v0}, Ljwtc/android/chess/ics/ICSPatterns;-><init>()V

    iput-object v0, p0, Ljwtc/android/chess/ics/ICSServer;->icsPatterns:Ljwtc/android/chess/ics/ICSPatterns;

    return-void
.end method

.method static synthetic access$000(Ljwtc/android/chess/ics/ICSServer;)Ljwtc/android/chess/ics/TelnetSocket;
    .locals 0

    .line 21
    iget-object p0, p0, Ljwtc/android/chess/ics/ICSServer;->_socket:Ljwtc/android/chess/ics/TelnetSocket;

    return-object p0
.end method

.method static synthetic access$002(Ljwtc/android/chess/ics/ICSServer;Ljwtc/android/chess/ics/TelnetSocket;)Ljwtc/android/chess/ics/TelnetSocket;
    .locals 0

    .line 21
    iput-object p1, p0, Ljwtc/android/chess/ics/ICSServer;->_socket:Ljwtc/android/chess/ics/TelnetSocket;

    return-object p1
.end method

.method static synthetic access$100(Ljwtc/android/chess/ics/ICSServer;)Landroid/os/Handler;
    .locals 0

    .line 21
    iget-object p0, p0, Ljwtc/android/chess/ics/ICSServer;->keepAliveTimerHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private dispatchLoginerror(Ljava/lang/String;)V
    .locals 2

    .line 481
    iget-object v0, p0, Ljwtc/android/chess/ics/ICSServer;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljwtc/android/chess/ics/ICSListener;

    invoke-interface {v1, p1}, Ljwtc/android/chess/ics/ICSListener;->OnLoginFailed(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private parse(Ljava/lang/String;)V
    .locals 11

    const-string v0, "\n\r"

    .line 196
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 197
    array-length v1, v0

    .line 199
    iget v2, p0, Ljwtc/android/chess/ics/ICSServer;->expectingState:I

    const-string v3, "Could net send handle"

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-ne v2, v5, :cond_3

    const-string v0, "login: "

    .line 200
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 201
    iget-object p1, p0, Ljwtc/android/chess/ics/ICSServer;->handle:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljwtc/android/chess/ics/ICSServer;->sendString(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 202
    iput v4, p0, Ljwtc/android/chess/ics/ICSServer;->expectingState:I

    .line 203
    iget-object p1, p0, Ljwtc/android/chess/ics/ICSServer;->listeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljwtc/android/chess/ics/ICSListener;

    invoke-interface {v0}, Ljwtc/android/chess/ics/ICSListener;->OnLoggingIn()V

    goto :goto_0

    :cond_0
    return-void

    .line 206
    :cond_1
    invoke-direct {p0, v3}, Ljwtc/android/chess/ics/ICSServer;->dispatchLoginerror(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string p1, "Unexpected response while expecting login prompt"

    .line 209
    invoke-direct {p0, p1}, Ljwtc/android/chess/ics/ICSServer;->dispatchLoginerror(Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_3
    const-string v6, "\r\n\uefbf\ubdef\ubfbd\uefbf\ubdef\ubfbd\ud89e\u0001\ufffd\ufffd"

    const/4 v7, 0x3

    const-string v8, ""

    if-ne v2, v4, :cond_a

    .line 216
    invoke-static {p1, v6, v8}, Ljwtc/android/chess/ics/ICSPatterns;->replaceChars(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 217
    iget-object v0, p0, Ljwtc/android/chess/ics/ICSServer;->handle:Ljava/lang/String;

    const-string v1, "guest"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "Unexpected response on guest login"

    if-eqz v0, :cond_7

    const-string v0, "Press return to enter the server as"

    .line 218
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 219
    iget-object v0, p0, Ljwtc/android/chess/ics/ICSServer;->icsPatterns:Ljwtc/android/chess/ics/ICSPatterns;

    invoke-virtual {v0, p1}, Ljwtc/android/chess/ics/ICSPatterns;->parseGuestHandle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 221
    invoke-virtual {p0, v8}, Ljwtc/android/chess/ics/ICSServer;->sendString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 222
    iput-object p1, p0, Ljwtc/android/chess/ics/ICSServer;->handle:Ljava/lang/String;

    .line 223
    iput v7, p0, Ljwtc/android/chess/ics/ICSServer;->expectingState:I

    return-void

    .line 226
    :cond_4
    invoke-direct {p0, v3}, Ljwtc/android/chess/ics/ICSServer;->dispatchLoginerror(Ljava/lang/String;)V

    return-void

    :cond_5
    const-string p1, "Could not get guest handle from response"

    .line 230
    invoke-direct {p0, p1}, Ljwtc/android/chess/ics/ICSServer;->dispatchLoginerror(Ljava/lang/String;)V

    return-void

    .line 234
    :cond_6
    invoke-direct {p0, v1}, Ljwtc/android/chess/ics/ICSServer;->dispatchLoginerror(Ljava/lang/String;)V

    return-void

    :cond_7
    const-string v0, "password: "

    .line 237
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 238
    iget-object p1, p0, Ljwtc/android/chess/ics/ICSServer;->password:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljwtc/android/chess/ics/ICSServer;->sendString(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 239
    iput v7, p0, Ljwtc/android/chess/ics/ICSServer;->expectingState:I

    return-void

    :cond_8
    const-string p1, "Could net send password"

    .line 242
    invoke-direct {p0, p1}, Ljwtc/android/chess/ics/ICSServer;->dispatchLoginerror(Ljava/lang/String;)V

    return-void

    .line 246
    :cond_9
    invoke-direct {p0, v1}, Ljwtc/android/chess/ics/ICSServer;->dispatchLoginerror(Ljava/lang/String;)V

    return-void

    :cond_a
    const/4 v3, 0x4

    if-ne v2, v7, :cond_11

    .line 251
    invoke-static {p1, v6, v8}, Ljwtc/android/chess/ics/ICSPatterns;->replaceChars(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 252
    iget-object v0, p0, Ljwtc/android/chess/ics/ICSServer;->handle:Ljava/lang/String;

    const-string v1, "Guest"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 253
    iget-object v0, p0, Ljwtc/android/chess/ics/ICSServer;->icsPatterns:Ljwtc/android/chess/ics/ICSPatterns;

    invoke-virtual {v0, p1}, Ljwtc/android/chess/ics/ICSPatterns;->isSessionStarting(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 254
    iput v3, p0, Ljwtc/android/chess/ics/ICSServer;->expectingState:I

    .line 255
    iget-object p1, p0, Ljwtc/android/chess/ics/ICSServer;->listeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljwtc/android/chess/ics/ICSListener;

    invoke-interface {v0}, Ljwtc/android/chess/ics/ICSListener;->OnLoginSuccess()V

    goto :goto_2

    :cond_b
    return-void

    .line 258
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected buffer on guest password response: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljwtc/android/chess/ics/ICSServer;->dispatchLoginerror(Ljava/lang/String;)V

    return-void

    .line 261
    :cond_d
    iget-object v0, p0, Ljwtc/android/chess/ics/ICSServer;->icsPatterns:Ljwtc/android/chess/ics/ICSPatterns;

    invoke-virtual {v0, p1}, Ljwtc/android/chess/ics/ICSPatterns;->isInvalidPassword(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string p1, "Invalid password"

    .line 262
    invoke-direct {p0, p1}, Ljwtc/android/chess/ics/ICSServer;->dispatchLoginerror(Ljava/lang/String;)V

    return-void

    .line 265
    :cond_e
    iget-object v0, p0, Ljwtc/android/chess/ics/ICSServer;->icsPatterns:Ljwtc/android/chess/ics/ICSPatterns;

    invoke-virtual {v0, p1}, Ljwtc/android/chess/ics/ICSPatterns;->isSessionStarting(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 266
    iput v3, p0, Ljwtc/android/chess/ics/ICSServer;->expectingState:I

    .line 267
    iget-object p1, p0, Ljwtc/android/chess/ics/ICSServer;->listeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljwtc/android/chess/ics/ICSListener;

    invoke-interface {v0}, Ljwtc/android/chess/ics/ICSListener;->OnLoginSuccess()V

    goto :goto_3

    :cond_f
    return-void

    .line 270
    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected buffer on password response: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljwtc/android/chess/ics/ICSServer;->dispatchLoginerror(Ljava/lang/String;)V

    return-void

    :cond_11
    const-string v6, "ICSServer"

    if-eq v2, v3, :cond_12

    const-string p1, "Invalid expect state"

    .line 275
    invoke-static {v6, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 279
    :cond_12
    invoke-virtual {p0}, Ljwtc/android/chess/ics/ICSServer;->startKeepAliveTimer()V

    .line 282
    iget-object v2, p0, Ljwtc/android/chess/ics/ICSServer;->icsPatterns:Ljwtc/android/chess/ics/ICSPatterns;

    invoke-virtual {v2, p1, v1}, Ljwtc/android/chess/ics/ICSPatterns;->containsGamesDisplayed(Ljava/lang/String;I)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_16

    .line 283
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :goto_4
    add-int/lit8 v2, v1, -0x2

    if-ge v3, v2, :cond_14

    .line 285
    iget-object v2, p0, Ljwtc/android/chess/ics/ICSServer;->icsPatterns:Ljwtc/android/chess/ics/ICSPatterns;

    aget-object v5, v0, v3

    invoke-virtual {v2, v5}, Ljwtc/android/chess/ics/ICSPatterns;->parseGameLine(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    if-eqz v2, :cond_13

    .line 287
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_13
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 290
    :cond_14
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_15

    .line 291
    iget-object v0, p0, Ljwtc/android/chess/ics/ICSServer;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljwtc/android/chess/ics/ICSListener;

    invoke-interface {v1, p1}, Ljwtc/android/chess/ics/ICSListener;->OnGameListResult(Ljava/util/ArrayList;)V

    goto :goto_5

    :cond_15
    return-void

    .line 296
    :cond_16
    iget-object v2, p0, Ljwtc/android/chess/ics/ICSServer;->icsPatterns:Ljwtc/android/chess/ics/ICSPatterns;

    invoke-virtual {v2, p1, v1}, Ljwtc/android/chess/ics/ICSPatterns;->containsAdsDisplayed(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 297
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :goto_6
    add-int/lit8 v2, v1, -0x2

    if-ge v3, v2, :cond_18

    .line 299
    iget-object v2, p0, Ljwtc/android/chess/ics/ICSServer;->icsPatterns:Ljwtc/android/chess/ics/ICSPatterns;

    aget-object v5, v0, v3

    invoke-virtual {v2, v5}, Ljwtc/android/chess/ics/ICSPatterns;->parseSought(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    if-eqz v2, :cond_17

    .line 301
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_17
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 304
    :cond_18
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_19

    .line 305
    iget-object v0, p0, Ljwtc/android/chess/ics/ICSServer;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljwtc/android/chess/ics/ICSListener;

    invoke-interface {v1, p1}, Ljwtc/android/chess/ics/ICSListener;->OnSoughtResult(Ljava/util/ArrayList;)V

    goto :goto_7

    :cond_19
    return-void

    .line 310
    :cond_1a
    iget-object v2, p0, Ljwtc/android/chess/ics/ICSServer;->icsPatterns:Ljwtc/android/chess/ics/ICSPatterns;

    invoke-virtual {v2, p1, v1}, Ljwtc/android/chess/ics/ICSPatterns;->containsPlayersDisplayed(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_1e

    .line 311
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :goto_8
    add-int/lit8 v2, v1, -0x2

    if-ge v3, v2, :cond_1c

    .line 313
    iget-object v2, p0, Ljwtc/android/chess/ics/ICSServer;->icsPatterns:Ljwtc/android/chess/ics/ICSPatterns;

    aget-object v5, v0, v3

    invoke-virtual {v2, v5}, Ljwtc/android/chess/ics/ICSPatterns;->parsePlayerLine(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    if-eqz v2, :cond_1b

    .line 315
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1b
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 318
    :cond_1c
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1d

    .line 319
    iget-object v0, p0, Ljwtc/android/chess/ics/ICSServer;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljwtc/android/chess/ics/ICSListener;

    invoke-interface {v1, p1}, Ljwtc/android/chess/ics/ICSListener;->OnPlayerList(Ljava/util/ArrayList;)V

    goto :goto_9

    :cond_1d
    return-void

    .line 325
    :cond_1e
    :goto_a
    array-length p1, v0

    if-ge v3, p1, :cond_36

    .line 326
    aget-object p1, v0, v3

    iget-object v1, p0, Ljwtc/android/chess/ics/ICSServer;->prompt:Ljava/lang/String;

    invoke-virtual {p1, v1, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 328
    iget-object v1, p0, Ljwtc/android/chess/ics/ICSServer;->icsPatterns:Ljwtc/android/chess/ics/ICSPatterns;

    invoke-virtual {v1, p1}, Ljwtc/android/chess/ics/ICSPatterns;->parseGameInfo(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    if-eqz v1, :cond_1f

    .line 330
    iget-object p1, p0, Ljwtc/android/chess/ics/ICSServer;->listeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljwtc/android/chess/ics/ICSListener;

    const-string v4, "whiteHandle"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v7, "blackHandle"

    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v9, "whiteRating"

    invoke-virtual {v1, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const-string v10, "blackRating"

    invoke-virtual {v1, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-interface {v2, v4, v7, v9, v10}, Ljwtc/android/chess/ics/ICSListener;->OnPlayGameStarted(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    .line 334
    :cond_1f
    iget-object v1, p0, Ljwtc/android/chess/ics/ICSServer;->icsPatterns:Ljwtc/android/chess/ics/ICSPatterns;

    invoke-virtual {v1, p1}, Ljwtc/android/chess/ics/ICSPatterns;->parseBoard(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    if-eqz v1, :cond_20

    .line 336
    iget-object p1, p0, Ljwtc/android/chess/ics/ICSServer;->listeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljwtc/android/chess/ics/ICSListener;

    const-string v4, "board"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v7, p0, Ljwtc/android/chess/ics/ICSServer;->handle:Ljava/lang/String;

    invoke-interface {v2, v4, v7}, Ljwtc/android/chess/ics/ICSListener;->OnBoardUpdated(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    .line 340
    :cond_20
    iget-object v1, p0, Ljwtc/android/chess/ics/ICSServer;->icsPatterns:Ljwtc/android/chess/ics/ICSPatterns;

    iget-object v2, p0, Ljwtc/android/chess/ics/ICSServer;->handle:Ljava/lang/String;

    invoke-virtual {v1, p1, v2}, Ljwtc/android/chess/ics/ICSPatterns;->parseChallenge(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    if-eqz v1, :cond_21

    .line 342
    iget-object p1, p0, Ljwtc/android/chess/ics/ICSServer;->listeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljwtc/android/chess/ics/ICSListener;

    invoke-interface {v2, v1}, Ljwtc/android/chess/ics/ICSListener;->OnChallenged(Ljava/util/HashMap;)V

    goto :goto_d

    .line 346
    :cond_21
    iget-object v1, p0, Ljwtc/android/chess/ics/ICSServer;->icsPatterns:Ljwtc/android/chess/ics/ICSPatterns;

    invoke-virtual {v1, p1}, Ljwtc/android/chess/ics/ICSPatterns;->isSeekNotAvailable(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 347
    iget-object p1, p0, Ljwtc/android/chess/ics/ICSServer;->listeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_35

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljwtc/android/chess/ics/ICSListener;

    invoke-interface {v1}, Ljwtc/android/chess/ics/ICSListener;->OnSeekNotAvailable()V

    goto :goto_e

    .line 351
    :cond_22
    iget-object v1, p0, Ljwtc/android/chess/ics/ICSServer;->icsPatterns:Ljwtc/android/chess/ics/ICSPatterns;

    invoke-virtual {v1, p1}, Ljwtc/android/chess/ics/ICSPatterns;->getCreatingOrContinuingGameNumber(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_23

    .line 353
    iget-object p1, p0, Ljwtc/android/chess/ics/ICSServer;->listeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljwtc/android/chess/ics/ICSListener;

    invoke-interface {v2, v1}, Ljwtc/android/chess/ics/ICSListener;->OnGameNumberUpdated(I)V

    goto :goto_f

    .line 357
    :cond_23
    iget-object v1, p0, Ljwtc/android/chess/ics/ICSServer;->icsPatterns:Ljwtc/android/chess/ics/ICSPatterns;

    invoke-virtual {v1, p1}, Ljwtc/android/chess/ics/ICSPatterns;->isResumingAdjournedGame(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 358
    iget-object p1, p0, Ljwtc/android/chess/ics/ICSServer;->listeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_10
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_35

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljwtc/android/chess/ics/ICSListener;

    invoke-interface {v1}, Ljwtc/android/chess/ics/ICSListener;->OnResumingAdjournedGame()V

    goto :goto_10

    .line 362
    :cond_24
    iget-object v1, p0, Ljwtc/android/chess/ics/ICSServer;->icsPatterns:Ljwtc/android/chess/ics/ICSPatterns;

    invoke-virtual {v1, p1}, Ljwtc/android/chess/ics/ICSPatterns;->isIllegalMove(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 363
    iget-object p1, p0, Ljwtc/android/chess/ics/ICSServer;->listeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_11
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_35

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljwtc/android/chess/ics/ICSListener;

    invoke-interface {v1}, Ljwtc/android/chess/ics/ICSListener;->OnIllegalMove()V

    goto :goto_11

    .line 367
    :cond_25
    iget-object v1, p0, Ljwtc/android/chess/ics/ICSServer;->icsPatterns:Ljwtc/android/chess/ics/ICSPatterns;

    iget-object v2, p0, Ljwtc/android/chess/ics/ICSServer;->opponent:Ljava/lang/String;

    invoke-virtual {v1, p1, v2}, Ljwtc/android/chess/ics/ICSPatterns;->isAbortRequest(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 368
    iget-object p1, p0, Ljwtc/android/chess/ics/ICSServer;->listeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_12
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_35

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljwtc/android/chess/ics/ICSListener;

    invoke-interface {v1}, Ljwtc/android/chess/ics/ICSListener;->OnOpponentRequestsAbort()V

    goto :goto_12

    .line 372
    :cond_26
    iget-object v1, p0, Ljwtc/android/chess/ics/ICSServer;->icsPatterns:Ljwtc/android/chess/ics/ICSPatterns;

    invoke-virtual {v1, p1}, Ljwtc/android/chess/ics/ICSPatterns;->isAbortedConfirmed(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 373
    iget-object p1, p0, Ljwtc/android/chess/ics/ICSServer;->listeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_13
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_35

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljwtc/android/chess/ics/ICSListener;

    invoke-interface {v1}, Ljwtc/android/chess/ics/ICSListener;->OnAbortConfirmed()V

    goto :goto_13

    .line 377
    :cond_27
    iget-object v1, p0, Ljwtc/android/chess/ics/ICSServer;->icsPatterns:Ljwtc/android/chess/ics/ICSPatterns;

    iget-object v2, p0, Ljwtc/android/chess/ics/ICSServer;->opponent:Ljava/lang/String;

    invoke-virtual {v1, p1, v2}, Ljwtc/android/chess/ics/ICSPatterns;->isTakeBackRequest(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 378
    iget-object p1, p0, Ljwtc/android/chess/ics/ICSServer;->listeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_14
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_35

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljwtc/android/chess/ics/ICSListener;

    invoke-interface {v1}, Ljwtc/android/chess/ics/ICSListener;->OnOpponentRequestsTakeBack()V

    goto :goto_14

    .line 382
    :cond_28
    iget-object v1, p0, Ljwtc/android/chess/ics/ICSServer;->icsPatterns:Ljwtc/android/chess/ics/ICSPatterns;

    iget-object v2, p0, Ljwtc/android/chess/ics/ICSServer;->opponent:Ljava/lang/String;

    invoke-virtual {v1, p1, v2}, Ljwtc/android/chess/ics/ICSPatterns;->isAdjournRequest(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 383
    iget-object p1, p0, Ljwtc/android/chess/ics/ICSServer;->listeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_15
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_35

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljwtc/android/chess/ics/ICSListener;

    invoke-interface {v1}, Ljwtc/android/chess/ics/ICSListener;->OnOpponentRequestsAdjourn()V

    goto :goto_15

    .line 387
    :cond_29
    iget-object v1, p0, Ljwtc/android/chess/ics/ICSServer;->icsPatterns:Ljwtc/android/chess/ics/ICSPatterns;

    invoke-virtual {v1, p1}, Ljwtc/android/chess/ics/ICSPatterns;->isAbortedOrAdourned(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 388
    iget-object p1, p0, Ljwtc/android/chess/ics/ICSServer;->listeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_16
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_35

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljwtc/android/chess/ics/ICSListener;

    invoke-interface {v1}, Ljwtc/android/chess/ics/ICSListener;->OnAbortedOrAdjourned()V

    goto :goto_16

    .line 392
    :cond_2a
    iget-object v1, p0, Ljwtc/android/chess/ics/ICSServer;->icsPatterns:Ljwtc/android/chess/ics/ICSPatterns;

    invoke-virtual {v1, p1}, Ljwtc/android/chess/ics/ICSPatterns;->isAbortOrDrawOrAdjourneRequestSent(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 393
    iget-object p1, p0, Ljwtc/android/chess/ics/ICSServer;->listeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_17
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_35

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljwtc/android/chess/ics/ICSListener;

    invoke-interface {v1}, Ljwtc/android/chess/ics/ICSListener;->OnYourRequestSended()V

    goto :goto_17

    .line 397
    :cond_2b
    iget-object v1, p0, Ljwtc/android/chess/ics/ICSServer;->icsPatterns:Ljwtc/android/chess/ics/ICSPatterns;

    invoke-virtual {v1, p1}, Ljwtc/android/chess/ics/ICSPatterns;->gameState(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v5, :cond_2c

    .line 399
    iget-object p1, p0, Ljwtc/android/chess/ics/ICSServer;->listeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_18
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljwtc/android/chess/ics/ICSListener;

    invoke-interface {v2, v1}, Ljwtc/android/chess/ics/ICSListener;->OnGameEndedResult(I)V

    goto :goto_18

    .line 403
    :cond_2c
    iget-object v1, p0, Ljwtc/android/chess/ics/ICSServer;->icsPatterns:Ljwtc/android/chess/ics/ICSPatterns;

    iget-object v2, p0, Ljwtc/android/chess/ics/ICSServer;->opponent:Ljava/lang/String;

    invoke-virtual {v1, p1, v2}, Ljwtc/android/chess/ics/ICSPatterns;->isDrawRequest(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 404
    iget-object p1, p0, Ljwtc/android/chess/ics/ICSServer;->listeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_19
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_35

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljwtc/android/chess/ics/ICSListener;

    invoke-interface {v1}, Ljwtc/android/chess/ics/ICSListener;->OnOpponentOffersDraw()V

    goto :goto_19

    .line 408
    :cond_2d
    iget-object v1, p0, Ljwtc/android/chess/ics/ICSServer;->icsPatterns:Ljwtc/android/chess/ics/ICSPatterns;

    invoke-virtual {v1, p1}, Ljwtc/android/chess/ics/ICSPatterns;->isNowOservingGame(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 409
    iget-object p1, p0, Ljwtc/android/chess/ics/ICSServer;->listeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_35

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljwtc/android/chess/ics/ICSListener;

    invoke-interface {v1}, Ljwtc/android/chess/ics/ICSListener;->OnObservingGameStarted()V

    goto :goto_1a

    .line 413
    :cond_2e
    iget-object v1, p0, Ljwtc/android/chess/ics/ICSServer;->icsPatterns:Ljwtc/android/chess/ics/ICSPatterns;

    invoke-virtual {v1, p1}, Ljwtc/android/chess/ics/ICSPatterns;->isStopObservingGame(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 414
    iget-object p1, p0, Ljwtc/android/chess/ics/ICSServer;->listeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_35

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljwtc/android/chess/ics/ICSListener;

    invoke-interface {v1}, Ljwtc/android/chess/ics/ICSListener;->OnObservingGameStopped()V

    goto :goto_1b

    .line 418
    :cond_2f
    iget-object v1, p0, Ljwtc/android/chess/ics/ICSServer;->icsPatterns:Ljwtc/android/chess/ics/ICSPatterns;

    invoke-virtual {v1, p1}, Ljwtc/android/chess/ics/ICSPatterns;->isStopExaminingGame(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 419
    iget-object p1, p0, Ljwtc/android/chess/ics/ICSServer;->listeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_35

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljwtc/android/chess/ics/ICSListener;

    invoke-interface {v1}, Ljwtc/android/chess/ics/ICSListener;->OnExaminingGameStopped()V

    goto :goto_1c

    .line 423
    :cond_30
    iget-object v1, p0, Ljwtc/android/chess/ics/ICSServer;->icsPatterns:Ljwtc/android/chess/ics/ICSPatterns;

    invoke-virtual {v1, p1}, Ljwtc/android/chess/ics/ICSPatterns;->isPuzzleStarted(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 424
    iget-object p1, p0, Ljwtc/android/chess/ics/ICSServer;->listeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_35

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljwtc/android/chess/ics/ICSListener;

    invoke-interface {v1}, Ljwtc/android/chess/ics/ICSListener;->OnPuzzleStarted()V

    goto :goto_1d

    .line 428
    :cond_31
    iget-object v1, p0, Ljwtc/android/chess/ics/ICSServer;->icsPatterns:Ljwtc/android/chess/ics/ICSPatterns;

    invoke-virtual {v1, p1}, Ljwtc/android/chess/ics/ICSPatterns;->isPuzzleStopped(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 429
    iget-object p1, p0, Ljwtc/android/chess/ics/ICSServer;->listeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_35

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljwtc/android/chess/ics/ICSListener;

    invoke-interface {v1}, Ljwtc/android/chess/ics/ICSListener;->OnPuzzleStopped()V

    goto :goto_1e

    .line 433
    :cond_32
    iget-object v1, p0, Ljwtc/android/chess/ics/ICSServer;->icsPatterns:Ljwtc/android/chess/ics/ICSPatterns;

    invoke-virtual {v1, p1}, Ljwtc/android/chess/ics/ICSPatterns;->isPuzzleSolved(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 434
    iget-object p1, p0, Ljwtc/android/chess/ics/ICSServer;->listeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_35

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljwtc/android/chess/ics/ICSListener;

    invoke-interface {v1}, Ljwtc/android/chess/ics/ICSListener;->OnPuzzleSolved()V

    goto :goto_1f

    .line 438
    :cond_33
    iget-object v1, p0, Ljwtc/android/chess/ics/ICSServer;->icsPatterns:Ljwtc/android/chess/ics/ICSPatterns;

    invoke-virtual {v1, p1}, Ljwtc/android/chess/ics/ICSPatterns;->filterOutput(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_34

    goto :goto_21

    .line 442
    :cond_34
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    iget-object v1, p0, Ljwtc/android/chess/ics/ICSServer;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_20
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljwtc/android/chess/ics/ICSListener;

    invoke-interface {v2, p1}, Ljwtc/android/chess/ics/ICSListener;->OnConsoleOutput(Ljava/lang/String;)V

    goto :goto_20

    :cond_35
    :goto_21
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_a

    :cond_36
    return-void
.end method


# virtual methods
.method public addListener(Ljwtc/android/chess/ics/ICSListener;)V
    .locals 1

    .line 44
    iget-object v0, p0, Ljwtc/android/chess/ics/ICSServer;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public cancelKeepAliveTimer()V
    .locals 1

    .line 461
    iget-object v0, p0, Ljwtc/android/chess/ics/ICSServer;->keepAlivetimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 462
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    .line 463
    iput-object v0, p0, Ljwtc/android/chess/ics/ICSServer;->keepAlivetimer:Ljava/util/Timer;

    :cond_0
    return-void
.end method

.method public getHandle()Ljava/lang/String;
    .locals 1

    .line 137
    iget-object v0, p0, Ljwtc/android/chess/ics/ICSServer;->handle:Ljava/lang/String;

    return-object v0
.end method

.method public handleBufferMessage(Ljava/lang/String;)V
    .locals 3

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ljwtc/android/chess/ics/ICSServer;->currentBuffer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljwtc/android/chess/ics/ICSServer;->currentBuffer:Ljava/lang/String;

    .line 167
    iget-object v0, p0, Ljwtc/android/chess/ics/ICSServer;->prompt:Ljava/lang/String;

    .line 170
    iget v1, p0, Ljwtc/android/chess/ics/ICSServer;->expectingState:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 175
    :cond_1
    iget-object v0, p0, Ljwtc/android/chess/ics/ICSServer;->handle:Ljava/lang/String;

    const-string v1, "guest"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "\":"

    goto :goto_0

    :cond_2
    const-string v0, ": "

    goto :goto_0

    :cond_3
    const-string v0, "login: "

    :goto_0
    if-eqz v0, :cond_4

    .line 185
    iget-object v1, p0, Ljwtc/android/chess/ics/ICSServer;->currentBuffer:Ljava/lang/String;

    .line 186
    invoke-virtual {v1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    :cond_4
    if-nez v0, :cond_6

    iget-object v0, p0, Ljwtc/android/chess/ics/ICSServer;->currentBuffer:Ljava/lang/String;

    const-string v1, "**** "

    .line 187
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v0, 0x14

    if-le p1, v0, :cond_6

    .line 189
    :cond_5
    iget-object p1, p0, Ljwtc/android/chess/ics/ICSServer;->currentBuffer:Ljava/lang/String;

    invoke-direct {p0, p1}, Ljwtc/android/chess/ics/ICSServer;->parse(Ljava/lang/String;)V

    const-string p1, ""

    .line 190
    iput-object p1, p0, Ljwtc/android/chess/ics/ICSServer;->currentBuffer:Ljava/lang/String;

    :cond_6
    return-void
.end method

.method public handleThreadMessage(Landroid/os/Message;)V
    .locals 2

    .line 145
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 p1, 0x2

    const-string v1, "ICSServer"

    if-eq v0, p1, :cond_1

    const/4 p1, 0x3

    if-eq v0, p1, :cond_0

    const-string p1, "Unecpected msg.what"

    .line 159
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_0
    const-string p1, "MSG_CONNECTION_CLOSED"

    .line 151
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object p1, p0, Ljwtc/android/chess/ics/ICSServer;->listeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljwtc/android/chess/ics/ICSListener;

    invoke-interface {v0}, Ljwtc/android/chess/ics/ICSListener;->OnSessionEnded()V

    goto :goto_0

    :cond_1
    const-string p1, "MSG_ERROR"

    .line 155
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget-object p1, p0, Ljwtc/android/chess/ics/ICSServer;->listeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljwtc/android/chess/ics/ICSListener;

    invoke-interface {v0}, Ljwtc/android/chess/ics/ICSListener;->OnError()V

    goto :goto_1

    .line 147
    :cond_2
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "buffer"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 148
    invoke-virtual {p0, p1}, Ljwtc/android/chess/ics/ICSServer;->handleBufferMessage(Ljava/lang/String;)V

    :cond_3
    :goto_2
    return-void
.end method

.method public isConnected()Z
    .locals 3

    .line 130
    iget-object v0, p0, Ljwtc/android/chess/ics/ICSServer;->_socket:Ljwtc/android/chess/ics/TelnetSocket;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljwtc/android/chess/ics/TelnetSocket;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    iget v0, p0, Ljwtc/android/chess/ics/ICSServer;->expectingState:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isGuest()Z
    .locals 2

    .line 141
    iget-object v0, p0, Ljwtc/android/chess/ics/ICSServer;->handle:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, "Guest"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isUserPlaying()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 470
    iget-object p1, p0, Ljwtc/android/chess/ics/ICSServer;->mBinder:Landroid/os/IBinder;

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "ICSServer"

    const-string v1, "onDestroy"

    .line 56
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    invoke-virtual {p0}, Ljwtc/android/chess/ics/ICSServer;->tearDown()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    .line 50
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Received start id "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ": "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ICSServer"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    return p1
.end method

.method public removeListener(Ljwtc/android/chess/ics/ICSListener;)V
    .locals 1

    .line 46
    iget-object v0, p0, Ljwtc/android/chess/ics/ICSServer;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public sendString(Ljava/lang/String;)Z
    .locals 2

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendString: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ICSServer"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object v0, p0, Ljwtc/android/chess/ics/ICSServer;->_socket:Ljwtc/android/chess/ics/TelnetSocket;

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljwtc/android/chess/ics/TelnetSocket;->sendString(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public startKeepAliveTimer()V
    .locals 7

    .line 449
    iget-object v0, p0, Ljwtc/android/chess/ics/ICSServer;->keepAlivetimer:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 450
    new-instance v1, Ljava/util/Timer;

    const/4 v0, 0x1

    invoke-direct {v1, v0}, Ljava/util/Timer;-><init>(Z)V

    iput-object v1, p0, Ljwtc/android/chess/ics/ICSServer;->keepAlivetimer:Ljava/util/Timer;

    .line 451
    new-instance v2, Ljwtc/android/chess/ics/ICSServer$2;

    invoke-direct {v2, p0}, Ljwtc/android/chess/ics/ICSServer$2;-><init>(Ljwtc/android/chess/ics/ICSServer;)V

    const-wide/16 v3, 0x7530

    const-wide/16 v5, 0x7530

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    :cond_0
    return-void
.end method

.method public startSession(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startSession "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ICSServer"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, ""

    .line 70
    iput-object v0, p0, Ljwtc/android/chess/ics/ICSServer;->currentBuffer:Ljava/lang/String;

    const/4 v1, 0x1

    .line 71
    iput v1, p0, Ljwtc/android/chess/ics/ICSServer;->expectingState:I

    .line 72
    iput-object p5, p0, Ljwtc/android/chess/ics/ICSServer;->prompt:Ljava/lang/String;

    .line 73
    iput-object p3, p0, Ljwtc/android/chess/ics/ICSServer;->handle:Ljava/lang/String;

    .line 74
    iput-object p4, p0, Ljwtc/android/chess/ics/ICSServer;->password:Ljava/lang/String;

    .line 75
    iput-object v0, p0, Ljwtc/android/chess/ics/ICSServer;->opponent:Ljava/lang/String;

    .line 77
    new-instance p3, Ljava/lang/Thread;

    new-instance p4, Ljwtc/android/chess/ics/ICSServer$1;

    invoke-direct {p4, p0, p1, p2}, Ljwtc/android/chess/ics/ICSServer$1;-><init>(Ljwtc/android/chess/ics/ICSServer;Ljava/lang/String;I)V

    invoke-direct {p3, p4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object p3, p0, Ljwtc/android/chess/ics/ICSServer;->_workerTelnet:Ljava/lang/Thread;

    .line 117
    invoke-virtual {p3}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public tearDown()V
    .locals 2

    const/4 v0, 0x0

    .line 61
    iput-object v0, p0, Ljwtc/android/chess/ics/ICSServer;->_workerTelnet:Ljava/lang/Thread;

    .line 63
    :try_start_0
    iget-object v1, p0, Ljwtc/android/chess/ics/ICSServer;->_socket:Ljwtc/android/chess/ics/TelnetSocket;

    invoke-virtual {v1}, Ljwtc/android/chess/ics/TelnetSocket;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :catch_0
    iput-object v0, p0, Ljwtc/android/chess/ics/ICSServer;->_socket:Ljwtc/android/chess/ics/TelnetSocket;

    return-void
.end method
