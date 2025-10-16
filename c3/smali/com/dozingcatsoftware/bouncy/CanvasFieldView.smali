.class public Lcom/dozingcatsoftware/bouncy/CanvasFieldView;
.super Landroid/view/SurfaceView;
.source "CanvasFieldView.java"

# interfaces
.implements Lcom/dozingcatsoftware/vectorpinball/model/IFieldRenderer$FloatOnlyRenderer;


# instance fields
.field canvas:Landroid/graphics/Canvas;

.field manager:Lcom/dozingcatsoftware/bouncy/FieldViewManager;

.field paint:Landroid/graphics/Paint;

.field rect:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/dozingcatsoftware/bouncy/CanvasFieldView;->paint:Landroid/graphics/Paint;

    .line 25
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/dozingcatsoftware/bouncy/CanvasFieldView;->rect:Landroid/graphics/RectF;

    .line 28
    iget-object p1, p0, Lcom/dozingcatsoftware/bouncy/CanvasFieldView;->paint:Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 19
    invoke-virtual {p0, p2}, Lcom/dozingcatsoftware/bouncy/CanvasFieldView;->setFocusable(Z)V

    return-void
.end method


# virtual methods
.method public canDrawArc()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public doDraw()V
    .locals 3

    .line 58
    invoke-virtual {p0}, Lcom/dozingcatsoftware/bouncy/CanvasFieldView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v1, 0xff

    const/4 v2, 0x0

    .line 60
    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 61
    iget-object v1, p0, Lcom/dozingcatsoftware/bouncy/CanvasFieldView;->paint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/dozingcatsoftware/bouncy/CanvasFieldView;->manager:Lcom/dozingcatsoftware/bouncy/FieldViewManager;

    invoke-virtual {v2}, Lcom/dozingcatsoftware/bouncy/FieldViewManager;->getLineWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 62
    iput-object v0, p0, Lcom/dozingcatsoftware/bouncy/CanvasFieldView;->canvas:Landroid/graphics/Canvas;

    .line 64
    :try_start_0
    iget-object v1, p0, Lcom/dozingcatsoftware/bouncy/CanvasFieldView;->manager:Lcom/dozingcatsoftware/bouncy/FieldViewManager;

    invoke-virtual {v1}, Lcom/dozingcatsoftware/bouncy/FieldViewManager;->getField()Lcom/dozingcatsoftware/vectorpinball/model/Field;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->draw(Lcom/dozingcatsoftware/vectorpinball/model/IFieldRenderer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    invoke-virtual {p0}, Lcom/dozingcatsoftware/bouncy/CanvasFieldView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Lcom/dozingcatsoftware/bouncy/CanvasFieldView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 68
    throw v1
.end method

.method public synthetic drawArc(DDDDDDI)V
    .locals 0

    invoke-static/range {p0 .. p13}, Lcom/dozingcatsoftware/vectorpinball/model/IFieldRenderer$FloatOnlyRenderer$-CC;->$default$drawArc(Lcom/dozingcatsoftware/vectorpinball/model/IFieldRenderer$FloatOnlyRenderer;DDDDDDI)V

    return-void
.end method

.method public drawArc(FFFFFFI)V
    .locals 6

    .line 117
    iget-object v0, p0, Lcom/dozingcatsoftware/bouncy/CanvasFieldView;->paint:Landroid/graphics/Paint;

    invoke-static {p7}, Lcom/dozingcatsoftware/vectorpinball/model/Color;->toARGB(I)I

    move-result p7

    invoke-virtual {v0, p7}, Landroid/graphics/Paint;->setColor(I)V

    .line 118
    iget-object p7, p0, Lcom/dozingcatsoftware/bouncy/CanvasFieldView;->paint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p7, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 119
    iget-object p7, p0, Lcom/dozingcatsoftware/bouncy/CanvasFieldView;->manager:Lcom/dozingcatsoftware/bouncy/FieldViewManager;

    invoke-virtual {p7, p1}, Lcom/dozingcatsoftware/bouncy/FieldViewManager;->world2pixelX(F)F

    move-result p1

    .line 120
    iget-object p7, p0, Lcom/dozingcatsoftware/bouncy/CanvasFieldView;->manager:Lcom/dozingcatsoftware/bouncy/FieldViewManager;

    invoke-virtual {p7, p2}, Lcom/dozingcatsoftware/bouncy/FieldViewManager;->world2pixelY(F)F

    move-result p2

    .line 121
    iget-object p7, p0, Lcom/dozingcatsoftware/bouncy/CanvasFieldView;->manager:Lcom/dozingcatsoftware/bouncy/FieldViewManager;

    invoke-virtual {p7}, Lcom/dozingcatsoftware/bouncy/FieldViewManager;->getCachedScale()F

    move-result p7

    mul-float p3, p3, p7

    .line 122
    iget-object p7, p0, Lcom/dozingcatsoftware/bouncy/CanvasFieldView;->manager:Lcom/dozingcatsoftware/bouncy/FieldViewManager;

    invoke-virtual {p7}, Lcom/dozingcatsoftware/bouncy/FieldViewManager;->getCachedScale()F

    move-result p7

    mul-float p4, p4, p7

    .line 123
    iget-object p7, p0, Lcom/dozingcatsoftware/bouncy/CanvasFieldView;->rect:Landroid/graphics/RectF;

    sub-float v0, p1, p3

    sub-float v1, p2, p4

    add-float/2addr p1, p3

    add-float/2addr p2, p4

    invoke-virtual {p7, v0, v1, p1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    float-to-double p1, p6

    .line 124
    invoke-static {p1, p2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide p1

    const-wide p3, 0x4076800000000000L    # 360.0

    sub-double/2addr p3, p1

    double-to-float v2, p3

    sub-float/2addr p6, p5

    float-to-double p1, p6

    .line 125
    invoke-static {p1, p2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide p1

    double-to-float v3, p1

    .line 126
    iget-object v0, p0, Lcom/dozingcatsoftware/bouncy/CanvasFieldView;->canvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/dozingcatsoftware/bouncy/CanvasFieldView;->rect:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/dozingcatsoftware/bouncy/CanvasFieldView;->paint:Landroid/graphics/Paint;

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    return-void
.end method

.method drawCircle(FFFILandroid/graphics/Paint$Style;)V
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/dozingcatsoftware/bouncy/CanvasFieldView;->paint:Landroid/graphics/Paint;

    invoke-static {p4}, Lcom/dozingcatsoftware/vectorpinball/model/Color;->toARGB(I)I

    move-result p4

    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->setColor(I)V

    .line 104
    iget-object p4, p0, Lcom/dozingcatsoftware/bouncy/CanvasFieldView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p4, p5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 105
    iget-object p4, p0, Lcom/dozingcatsoftware/bouncy/CanvasFieldView;->manager:Lcom/dozingcatsoftware/bouncy/FieldViewManager;

    invoke-virtual {p4}, Lcom/dozingcatsoftware/bouncy/FieldViewManager;->getCachedScale()F

    move-result p4

    mul-float p3, p3, p4

    .line 106
    iget-object p4, p0, Lcom/dozingcatsoftware/bouncy/CanvasFieldView;->canvas:Landroid/graphics/Canvas;

    iget-object p5, p0, Lcom/dozingcatsoftware/bouncy/CanvasFieldView;->manager:Lcom/dozingcatsoftware/bouncy/FieldViewManager;

    invoke-virtual {p5, p1}, Lcom/dozingcatsoftware/bouncy/FieldViewManager;->world2pixelX(F)F

    move-result p1

    iget-object p5, p0, Lcom/dozingcatsoftware/bouncy/CanvasFieldView;->manager:Lcom/dozingcatsoftware/bouncy/FieldViewManager;

    invoke-virtual {p5, p2}, Lcom/dozingcatsoftware/bouncy/FieldViewManager;->world2pixelY(F)F

    move-result p2

    iget-object p5, p0, Lcom/dozingcatsoftware/bouncy/CanvasFieldView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p4, p1, p2, p3, p5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public synthetic drawLine(DDDDI)V
    .locals 0

    invoke-static/range {p0 .. p9}, Lcom/dozingcatsoftware/vectorpinball/model/IFieldRenderer$FloatOnlyRenderer$-CC;->$default$drawLine(Lcom/dozingcatsoftware/vectorpinball/model/IFieldRenderer$FloatOnlyRenderer;DDDDI)V

    return-void
.end method

.method public drawLine(FFFFI)V
    .locals 7

    .line 74
    iget-object v0, p0, Lcom/dozingcatsoftware/bouncy/CanvasFieldView;->paint:Landroid/graphics/Paint;

    invoke-static {p5}, Lcom/dozingcatsoftware/vectorpinball/model/Color;->toARGB(I)I

    move-result p5

    invoke-virtual {v0, p5}, Landroid/graphics/Paint;->setColor(I)V

    .line 75
    iget-object v1, p0, Lcom/dozingcatsoftware/bouncy/CanvasFieldView;->canvas:Landroid/graphics/Canvas;

    iget-object p5, p0, Lcom/dozingcatsoftware/bouncy/CanvasFieldView;->manager:Lcom/dozingcatsoftware/bouncy/FieldViewManager;

    .line 76
    invoke-virtual {p5, p1}, Lcom/dozingcatsoftware/bouncy/FieldViewManager;->world2pixelX(F)F

    move-result v2

    iget-object p1, p0, Lcom/dozingcatsoftware/bouncy/CanvasFieldView;->manager:Lcom/dozingcatsoftware/bouncy/FieldViewManager;

    invoke-virtual {p1, p2}, Lcom/dozingcatsoftware/bouncy/FieldViewManager;->world2pixelY(F)F

    move-result v3

    iget-object p1, p0, Lcom/dozingcatsoftware/bouncy/CanvasFieldView;->manager:Lcom/dozingcatsoftware/bouncy/FieldViewManager;

    .line 77
    invoke-virtual {p1, p3}, Lcom/dozingcatsoftware/bouncy/FieldViewManager;->world2pixelX(F)F

    move-result v4

    iget-object p1, p0, Lcom/dozingcatsoftware/bouncy/CanvasFieldView;->manager:Lcom/dozingcatsoftware/bouncy/FieldViewManager;

    invoke-virtual {p1, p4}, Lcom/dozingcatsoftware/bouncy/FieldViewManager;->world2pixelY(F)F

    move-result v5

    iget-object v6, p0, Lcom/dozingcatsoftware/bouncy/CanvasFieldView;->paint:Landroid/graphics/Paint;

    .line 75
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public synthetic drawLinePath([D[DI)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/dozingcatsoftware/vectorpinball/model/IFieldRenderer$FloatOnlyRenderer$-CC;->$default$drawLinePath(Lcom/dozingcatsoftware/vectorpinball/model/IFieldRenderer$FloatOnlyRenderer;[D[DI)V

    return-void
.end method

.method public drawLinePath([F[FI)V
    .locals 8

    .line 82
    iget-object v0, p0, Lcom/dozingcatsoftware/bouncy/CanvasFieldView;->paint:Landroid/graphics/Paint;

    invoke-static {p3}, Lcom/dozingcatsoftware/vectorpinball/model/Color;->toARGB(I)I

    move-result p3

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 83
    iget-object p3, p0, Lcom/dozingcatsoftware/bouncy/CanvasFieldView;->manager:Lcom/dozingcatsoftware/bouncy/FieldViewManager;

    const/4 v0, 0x0

    aget v1, p1, v0

    invoke-virtual {p3, v1}, Lcom/dozingcatsoftware/bouncy/FieldViewManager;->world2pixelX(F)F

    move-result p3

    .line 84
    iget-object v1, p0, Lcom/dozingcatsoftware/bouncy/CanvasFieldView;->manager:Lcom/dozingcatsoftware/bouncy/FieldViewManager;

    aget v0, p2, v0

    invoke-virtual {v1, v0}, Lcom/dozingcatsoftware/bouncy/FieldViewManager;->world2pixelY(F)F

    move-result v0

    const/4 v1, 0x1

    :goto_0
    move v3, p3

    move v4, v0

    .line 85
    array-length p3, p1

    if-ge v1, p3, :cond_0

    .line 86
    iget-object p3, p0, Lcom/dozingcatsoftware/bouncy/CanvasFieldView;->manager:Lcom/dozingcatsoftware/bouncy/FieldViewManager;

    aget v0, p1, v1

    invoke-virtual {p3, v0}, Lcom/dozingcatsoftware/bouncy/FieldViewManager;->world2pixelX(F)F

    move-result p3

    .line 87
    iget-object v0, p0, Lcom/dozingcatsoftware/bouncy/CanvasFieldView;->manager:Lcom/dozingcatsoftware/bouncy/FieldViewManager;

    aget v2, p2, v1

    invoke-virtual {v0, v2}, Lcom/dozingcatsoftware/bouncy/FieldViewManager;->world2pixelY(F)F

    move-result v0

    .line 88
    iget-object v2, p0, Lcom/dozingcatsoftware/bouncy/CanvasFieldView;->canvas:Landroid/graphics/Canvas;

    iget-object v7, p0, Lcom/dozingcatsoftware/bouncy/CanvasFieldView;->paint:Landroid/graphics/Paint;

    move v5, p3

    move v6, v0

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public synthetic fillCircle(DDDI)V
    .locals 0

    invoke-static/range {p0 .. p7}, Lcom/dozingcatsoftware/vectorpinball/model/IFieldRenderer$FloatOnlyRenderer$-CC;->$default$fillCircle(Lcom/dozingcatsoftware/vectorpinball/model/IFieldRenderer$FloatOnlyRenderer;DDDI)V

    return-void
.end method

.method public fillCircle(FFFI)V
    .locals 6

    .line 95
    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/dozingcatsoftware/bouncy/CanvasFieldView;->drawCircle(FFFILandroid/graphics/Paint$Style;)V

    return-void
.end method

.method public synthetic frameCircle(DDDI)V
    .locals 0

    invoke-static/range {p0 .. p7}, Lcom/dozingcatsoftware/vectorpinball/model/IFieldRenderer$FloatOnlyRenderer$-CC;->$default$frameCircle(Lcom/dozingcatsoftware/vectorpinball/model/IFieldRenderer$FloatOnlyRenderer;DDDI)V

    return-void
.end method

.method public frameCircle(FFFI)V
    .locals 6

    .line 99
    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/dozingcatsoftware/bouncy/CanvasFieldView;->drawCircle(FFFILandroid/graphics/Paint$Style;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/dozingcatsoftware/bouncy/CanvasFieldView;->manager:Lcom/dozingcatsoftware/bouncy/FieldViewManager;

    invoke-virtual {v0, p1, p2}, Lcom/dozingcatsoftware/bouncy/FieldViewManager;->handleKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/dozingcatsoftware/bouncy/CanvasFieldView;->manager:Lcom/dozingcatsoftware/bouncy/FieldViewManager;

    invoke-virtual {v0, p1, p2}, Lcom/dozingcatsoftware/bouncy/FieldViewManager;->handleKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/dozingcatsoftware/bouncy/CanvasFieldView;->manager:Lcom/dozingcatsoftware/bouncy/FieldViewManager;

    invoke-virtual {v0, p1}, Lcom/dozingcatsoftware/bouncy/FieldViewManager;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setManager(Lcom/dozingcatsoftware/bouncy/FieldViewManager;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/dozingcatsoftware/bouncy/CanvasFieldView;->manager:Lcom/dozingcatsoftware/bouncy/FieldViewManager;

    return-void
.end method
