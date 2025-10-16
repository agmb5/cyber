.class Lcom/dozingcatsoftware/vectorpinball/model/Field$ScheduledAction;
.super Ljava/lang/Object;
.source "Field.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dozingcatsoftware/vectorpinball/model/Field;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ScheduledAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/dozingcatsoftware/vectorpinball/model/Field$ScheduledAction;",
        ">;"
    }
.end annotation


# instance fields
.field action:Ljava/lang/Runnable;

.field actionTimeNanos:Ljava/lang/Long;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/dozingcatsoftware/vectorpinball/model/Field$ScheduledAction;)I
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field$ScheduledAction;->actionTimeNanos:Ljava/lang/Long;

    iget-object p1, p1, Lcom/dozingcatsoftware/vectorpinball/model/Field$ScheduledAction;->actionTimeNanos:Ljava/lang/Long;

    invoke-virtual {v0, p1}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 119
    check-cast p1, Lcom/dozingcatsoftware/vectorpinball/model/Field$ScheduledAction;

    invoke-virtual {p0, p1}, Lcom/dozingcatsoftware/vectorpinball/model/Field$ScheduledAction;->compareTo(Lcom/dozingcatsoftware/vectorpinball/model/Field$ScheduledAction;)I

    move-result p1

    return p1
.end method
