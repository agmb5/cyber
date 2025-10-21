.class public abstract Lcom/dozingcatsoftware/vectorpinball/model/Shape;
.super Ljava/lang/Object;
.source "Shape.java"

# interfaces
.implements Lcom/dozingcatsoftware/vectorpinball/model/IDrawable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dozingcatsoftware/vectorpinball/model/Shape$Circle;,
        Lcom/dozingcatsoftware/vectorpinball/model/Shape$Line;,
        Lcom/dozingcatsoftware/vectorpinball/model/Shape$FillType;
    }
.end annotation


# instance fields
.field color:I

.field inactiveLayerColor:Ljava/lang/Integer;

.field layer:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static f32(D)F
    .locals 0

    double-to-float p0, p0

    return p0
.end method


# virtual methods
.method colorToDraw(Lcom/dozingcatsoftware/vectorpinball/model/Field;)I
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/Shape;->inactiveLayerColor:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 18
    iget p1, p0, Lcom/dozingcatsoftware/vectorpinball/model/Shape;->color:I

    return p1

    .line 20
    :cond_0
    invoke-virtual {p0}, Lcom/dozingcatsoftware/vectorpinball/model/Shape;->getLayer()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->hasBallAtLayer(I)Z

    move-result p1

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/dozingcatsoftware/vectorpinball/model/Shape;->color:I

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/dozingcatsoftware/vectorpinball/model/Shape;->inactiveLayerColor:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :goto_0
    return p1
.end method

.method public getLayer()I
    .locals 1

    .line 13
    iget v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/Shape;->layer:I

    return v0
.end method
