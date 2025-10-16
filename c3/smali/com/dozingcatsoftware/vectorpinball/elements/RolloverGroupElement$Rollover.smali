.class Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement$Rollover;
.super Ljava/lang/Object;
.source "RolloverGroupElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Rollover"
.end annotation


# instance fields
.field color:Ljava/lang/Integer;

.field position:Lcom/badlogic/gdx/math/Vector2;

.field radius:F

.field radiusSquared:F

.field resetDelay:F

.field score:J


# direct methods
.method constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
