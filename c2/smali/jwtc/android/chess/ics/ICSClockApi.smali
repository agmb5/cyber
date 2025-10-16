.class public Ljwtc/android/chess/ics/ICSClockApi;
.super Ljwtc/android/chess/services/ClockApi;
.source "ICSClockApi.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljwtc/android/chess/services/ClockApi;-><init>()V

    return-void
.end method


# virtual methods
.method public getBlackRemaining()J
    .locals 2

    .line 17
    iget-wide v0, p0, Ljwtc/android/chess/ics/ICSClockApi;->blackRemaining:J

    return-wide v0
.end method

.method public getWhiteRemaining()J
    .locals 2

    .line 21
    iget-wide v0, p0, Ljwtc/android/chess/ics/ICSClockApi;->whiteRemaining:J

    return-wide v0
.end method

.method public setBlackRemaining(J)V
    .locals 0

    .line 7
    iput-wide p1, p0, Ljwtc/android/chess/ics/ICSClockApi;->blackRemaining:J

    .line 8
    invoke-virtual {p0}, Ljwtc/android/chess/ics/ICSClockApi;->dispatchClockTime()V

    return-void
.end method

.method public setWhiteRemaining(J)V
    .locals 0

    .line 12
    iput-wide p1, p0, Ljwtc/android/chess/ics/ICSClockApi;->whiteRemaining:J

    .line 13
    invoke-virtual {p0}, Ljwtc/android/chess/ics/ICSClockApi;->dispatchClockTime()V

    return-void
.end method
