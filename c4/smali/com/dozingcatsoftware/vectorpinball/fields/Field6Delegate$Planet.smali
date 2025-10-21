.class final Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate$Planet;
.super Ljava/lang/Object;
.source "Field6Delegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Planet"
.end annotation


# instance fields
.field angle:D

.field angularVelocity:D

.field color:I

.field element:Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;

.field radius:D

.field status:Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate$PlanetStatus;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate$1;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate$Planet;-><init>()V

    return-void
.end method
