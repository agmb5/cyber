.class public abstract Ljwtc/android/chess/services/ClockApi;
.super Ljava/lang/Object;
.source "ClockApi.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ClockApi"


# instance fields
.field protected blackRemaining:J

.field protected listeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljwtc/android/chess/services/ClockListener;",
            ">;"
        }
    .end annotation
.end field

.field protected whiteRemaining:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 11
    iput-wide v0, p0, Ljwtc/android/chess/services/ClockApi;->whiteRemaining:J

    .line 12
    iput-wide v0, p0, Ljwtc/android/chess/services/ClockApi;->blackRemaining:J

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljwtc/android/chess/services/ClockApi;->listeners:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public addListener(Ljwtc/android/chess/services/ClockListener;)V
    .locals 1

    .line 16
    iget-object v0, p0, Ljwtc/android/chess/services/ClockApi;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected dispatchClockTime()V
    .locals 2

    .line 48
    iget-object v0, p0, Ljwtc/android/chess/services/ClockApi;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljwtc/android/chess/services/ClockListener;

    .line 49
    invoke-interface {v1}, Ljwtc/android/chess/services/ClockListener;->OnClockTime()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public abstract getBlackRemaining()J
.end method

.method public getBlackRemainingTime()Ljava/lang/String;
    .locals 2

    .line 31
    invoke-virtual {p0}, Ljwtc/android/chess/services/ClockApi;->getBlackRemaining()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljwtc/android/chess/services/ClockApi;->timeToString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRemaining(I)J
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 23
    iget-wide v0, p0, Ljwtc/android/chess/services/ClockApi;->whiteRemaining:J

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Ljwtc/android/chess/services/ClockApi;->blackRemaining:J

    :goto_0
    return-wide v0
.end method

.method public abstract getWhiteRemaining()J
.end method

.method public getWhiteRemainingTime()Ljava/lang/String;
    .locals 2

    .line 35
    invoke-virtual {p0}, Ljwtc/android/chess/services/ClockApi;->getWhiteRemaining()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljwtc/android/chess/services/ClockApi;->timeToString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public removeListener(Ljwtc/android/chess/services/ClockListener;)V
    .locals 1

    .line 19
    iget-object v0, p0, Ljwtc/android/chess/services/ClockApi;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method protected timeToString(J)Ljava/lang/String;
    .locals 3

    const-wide/16 v0, 0x3e8

    .line 39
    div-long/2addr p1, v0

    long-to-int p2, p1

    if-ltz p2, :cond_0

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 41
    div-int/lit8 v1, p2, 0x3c

    int-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v0

    const/4 v0, 0x1

    rem-int/lit8 p2, p2, 0x3c

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v0

    const-string p2, "%d:%02d"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "-:-"

    return-object p1
.end method
