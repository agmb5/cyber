.class public Lcom/dozingcatsoftware/bouncy/GL10Renderer;
.super Ljava/lang/Object;
.source "GL10Renderer.java"

# interfaces
.implements Lcom/dozingcatsoftware/vectorpinball/model/IFieldRenderer$FloatOnlyRenderer;
.implements Landroid/opengl/GLSurfaceView$Renderer;


# static fields
.field static final trigTable:Lcom/dozingcatsoftware/bouncy/util/TrigLookupTable;


# instance fields
.field private final glView:Lcom/dozingcatsoftware/bouncy/GLFieldView;

.field private lineVertexList:Lcom/dozingcatsoftware/bouncy/util/GLVertexList;

.field private manager:Lcom/dozingcatsoftware/bouncy/FieldViewManager;

.field renderDone:Z

.field final renderLock:Ljava/lang/Object;

.field private vertexListManager:Lcom/dozingcatsoftware/bouncy/util/GLVertexListManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 36
    new-instance v0, Lcom/dozingcatsoftware/bouncy/util/TrigLookupTable;

    const/4 v1, 0x3

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Lcom/dozingcatsoftware/bouncy/util/TrigLookupTable;-><init>([I)V

    sput-object v0, Lcom/dozingcatsoftware/bouncy/GL10Renderer;->trigTable:Lcom/dozingcatsoftware/bouncy/util/TrigLookupTable;

    return-void

    :array_0
    .array-data 4
        0x8
        0x14
        0x3c
    .end array-data
.end method

.method public constructor <init>(Lcom/dozingcatsoftware/bouncy/GLFieldView;)V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Lcom/dozingcatsoftware/bouncy/util/GLVertexListManager;

    invoke-direct {v0}, Lcom/dozingcatsoftware/bouncy/util/GLVertexListManager;-><init>()V

    iput-object v0, p0, Lcom/dozingcatsoftware/bouncy/GL10Renderer;->vertexListManager:Lcom/dozingcatsoftware/bouncy/util/GLVertexListManager;

    .line 108
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/dozingcatsoftware/bouncy/GL10Renderer;->renderLock:Ljava/lang/Object;

    .line 24
    iput-object p1, p0, Lcom/dozingcatsoftware/bouncy/GL10Renderer;->glView:Lcom/dozingcatsoftware/bouncy/GLFieldView;

    .line 25
    invoke-virtual {p1, p0}, Lcom/dozingcatsoftware/bouncy/GLFieldView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    const/4 v0, 0x0

    .line 26
    invoke-virtual {p1, v0}, Lcom/dozingcatsoftware/bouncy/GLFieldView;->setRenderMode(I)V

    return-void
.end method

.method private static addColorToVertexList(Lcom/dozingcatsoftware/bouncy/util/GLVertexList;I)V
    .locals 4

    .line 58
    invoke-static {p1}, Lcom/dozingcatsoftware/vectorpinball/model/Color;->getRed(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    invoke-static {p1}, Lcom/dozingcatsoftware/vectorpinball/model/Color;->getGreen(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    .line 59
    invoke-static {p1}, Lcom/dozingcatsoftware/vectorpinball/model/Color;->getBlue(I)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v1

    invoke-static {p1}, Lcom/dozingcatsoftware/vectorpinball/model/Color;->getAlpha(I)I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v1

    .line 57
    invoke-virtual {p0, v0, v2, v3, p1}, Lcom/dozingcatsoftware/bouncy/util/GLVertexList;->addColor(FFFF)V

    return-void
.end method


# virtual methods
.method public synthetic canDrawArc()Z
    .locals 1

    invoke-static {p0}, Lcom/dozingcatsoftware/vectorpinball/model/IFieldRenderer$-CC;->$default$canDrawArc(Lcom/dozingcatsoftware/vectorpinball/model/IFieldRenderer;)Z

    move-result v0

    return v0
.end method

.method public doDraw()V
    .locals 2

    .line 133
    iget-object v0, p0, Lcom/dozingcatsoftware/bouncy/GL10Renderer;->renderLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 134
    :try_start_0
    iput-boolean v1, p0, Lcom/dozingcatsoftware/bouncy/GL10Renderer;->renderDone:Z

    .line 135
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 137
    iget-object v0, p0, Lcom/dozingcatsoftware/bouncy/GL10Renderer;->glView:Lcom/dozingcatsoftware/bouncy/GLFieldView;

    invoke-virtual {v0}, Lcom/dozingcatsoftware/bouncy/GLFieldView;->requestRender()V

    .line 139
    iget-object v1, p0, Lcom/dozingcatsoftware/bouncy/GL10Renderer;->renderLock:Ljava/lang/Object;

    monitor-enter v1

    .line 140
    :catch_0
    :goto_0
    :try_start_1
    iget-boolean v0, p0, Lcom/dozingcatsoftware/bouncy/GL10Renderer;->renderDone:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_0

    .line 142
    :try_start_2
    iget-object v0, p0, Lcom/dozingcatsoftware/bouncy/GL10Renderer;->renderLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 147
    :cond_0
    :try_start_3
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    .line 135
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method public synthetic drawArc(DDDDDDI)V
    .locals 0

    invoke-static/range {p0 .. p13}, Lcom/dozingcatsoftware/vectorpinball/model/IFieldRenderer$FloatOnlyRenderer$-CC;->$default$drawArc(Lcom/dozingcatsoftware/vectorpinball/model/IFieldRenderer$FloatOnlyRenderer;DDDDDDI)V

    return-void
.end method

.method public synthetic drawArc(FFFFFFI)V
    .locals 0

    invoke-static/range {p0 .. p7}, Lcom/dozingcatsoftware/vectorpinball/model/IFieldRenderer$-CC;->$default$drawArc(Lcom/dozingcatsoftware/vectorpinball/model/IFieldRenderer;FFFFFFI)V

    return-void
.end method

.method drawCircle(FFFII)V
    .locals 5

    .line 89
    iget-object v0, p0, Lcom/dozingcatsoftware/bouncy/GL10Renderer;->vertexListManager:Lcom/dozingcatsoftware/bouncy/util/GLVertexListManager;

    invoke-virtual {v0, p5}, Lcom/dozingcatsoftware/bouncy/util/GLVertexListManager;->addVertexListForMode(I)Lcom/dozingcatsoftware/bouncy/util/GLVertexList;

    move-result-object p5

    .line 90
    invoke-static {p5, p4}, Lcom/dozingcatsoftware/bouncy/GL10Renderer;->addColorToVertexList(Lcom/dozingcatsoftware/bouncy/util/GLVertexList;I)V

    .line 92
    iget-object p4, p0, Lcom/dozingcatsoftware/bouncy/GL10Renderer;->manager:Lcom/dozingcatsoftware/bouncy/FieldViewManager;

    invoke-virtual {p4, p3}, Lcom/dozingcatsoftware/bouncy/FieldViewManager;->world2pixelX(F)F

    move-result p4

    iget-object v0, p0, Lcom/dozingcatsoftware/bouncy/GL10Renderer;->manager:Lcom/dozingcatsoftware/bouncy/FieldViewManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/dozingcatsoftware/bouncy/FieldViewManager;->world2pixelX(F)F

    move-result v0

    sub-float/2addr p4, v0

    float-to-double v0, p4

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p4, v0

    const/16 v0, 0x3c

    if-ge p4, v0, :cond_0

    const/16 v0, 0x14

    .line 94
    invoke-static {p4, v0}, Ljava/lang/Math;->min(II)I

    move-result p4

    .line 95
    :cond_0
    sget-object v0, Lcom/dozingcatsoftware/bouncy/GL10Renderer;->trigTable:Lcom/dozingcatsoftware/bouncy/util/TrigLookupTable;

    invoke-virtual {v0, p4}, Lcom/dozingcatsoftware/bouncy/util/TrigLookupTable;->valuesWithSizeAtLeast(I)Lcom/dozingcatsoftware/bouncy/util/TrigLookupTable$SinCosValues;

    move-result-object p4

    .line 96
    invoke-virtual {p4}, Lcom/dozingcatsoftware/bouncy/util/TrigLookupTable$SinCosValues;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 98
    invoke-virtual {p4, v1}, Lcom/dozingcatsoftware/bouncy/util/TrigLookupTable$SinCosValues;->cosAtIndex(I)F

    move-result v2

    mul-float v2, v2, p3

    add-float/2addr v2, p1

    .line 99
    invoke-virtual {p4, v1}, Lcom/dozingcatsoftware/bouncy/util/TrigLookupTable$SinCosValues;->sinAtIndex(I)F

    move-result v3

    mul-float v3, v3, p3

    add-float/2addr v3, p2

    .line 100
    iget-object v4, p0, Lcom/dozingcatsoftware/bouncy/GL10Renderer;->manager:Lcom/dozingcatsoftware/bouncy/FieldViewManager;

    invoke-virtual {v4, v2}, Lcom/dozingcatsoftware/bouncy/FieldViewManager;->world2pixelX(F)F

    move-result v2

    iget-object v4, p0, Lcom/dozingcatsoftware/bouncy/GL10Renderer;->manager:Lcom/dozingcatsoftware/bouncy/FieldViewManager;

    invoke-virtual {v4, v3}, Lcom/dozingcatsoftware/bouncy/FieldViewManager;->world2pixelY(F)F

    move-result v3

    invoke-virtual {p5, v2, v3}, Lcom/dozingcatsoftware/bouncy/util/GLVertexList;->addVertex(FF)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public synthetic drawLine(DDDDI)V
    .locals 0

    invoke-static/range {p0 .. p9}, Lcom/dozingcatsoftware/vectorpinball/model/IFieldRenderer$FloatOnlyRenderer$-CC;->$default$drawLine(Lcom/dozingcatsoftware/vectorpinball/model/IFieldRenderer$FloatOnlyRenderer;DDDDI)V

    return-void
.end method

.method public drawLine(FFFFI)V
    .locals 2

    .line 65
    iget-object v0, p0, Lcom/dozingcatsoftware/bouncy/GL10Renderer;->lineVertexList:Lcom/dozingcatsoftware/bouncy/util/GLVertexList;

    iget-object v1, p0, Lcom/dozingcatsoftware/bouncy/GL10Renderer;->manager:Lcom/dozingcatsoftware/bouncy/FieldViewManager;

    invoke-virtual {v1, p1}, Lcom/dozingcatsoftware/bouncy/FieldViewManager;->world2pixelX(F)F

    move-result p1

    iget-object v1, p0, Lcom/dozingcatsoftware/bouncy/GL10Renderer;->manager:Lcom/dozingcatsoftware/bouncy/FieldViewManager;

    invoke-virtual {v1, p2}, Lcom/dozingcatsoftware/bouncy/FieldViewManager;->world2pixelY(F)F

    move-result p2

    invoke-virtual {v0, p1, p2}, Lcom/dozingcatsoftware/bouncy/util/GLVertexList;->addVertex(FF)V

    .line 66
    iget-object p1, p0, Lcom/dozingcatsoftware/bouncy/GL10Renderer;->lineVertexList:Lcom/dozingcatsoftware/bouncy/util/GLVertexList;

    iget-object p2, p0, Lcom/dozingcatsoftware/bouncy/GL10Renderer;->manager:Lcom/dozingcatsoftware/bouncy/FieldViewManager;

    invoke-virtual {p2, p3}, Lcom/dozingcatsoftware/bouncy/FieldViewManager;->world2pixelX(F)F

    move-result p2

    iget-object p3, p0, Lcom/dozingcatsoftware/bouncy/GL10Renderer;->manager:Lcom/dozingcatsoftware/bouncy/FieldViewManager;

    invoke-virtual {p3, p4}, Lcom/dozingcatsoftware/bouncy/FieldViewManager;->world2pixelY(F)F

    move-result p3

    invoke-virtual {p1, p2, p3}, Lcom/dozingcatsoftware/bouncy/util/GLVertexList;->addVertex(FF)V

    .line 67
    iget-object p1, p0, Lcom/dozingcatsoftware/bouncy/GL10Renderer;->lineVertexList:Lcom/dozingcatsoftware/bouncy/util/GLVertexList;

    invoke-static {p1, p5}, Lcom/dozingcatsoftware/bouncy/GL10Renderer;->addColorToVertexList(Lcom/dozingcatsoftware/bouncy/util/GLVertexList;I)V

    .line 68
    iget-object p1, p0, Lcom/dozingcatsoftware/bouncy/GL10Renderer;->lineVertexList:Lcom/dozingcatsoftware/bouncy/util/GLVertexList;

    invoke-static {p1, p5}, Lcom/dozingcatsoftware/bouncy/GL10Renderer;->addColorToVertexList(Lcom/dozingcatsoftware/bouncy/util/GLVertexList;I)V

    return-void
.end method

.method public synthetic drawLinePath([D[DI)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/dozingcatsoftware/vectorpinball/model/IFieldRenderer$FloatOnlyRenderer$-CC;->$default$drawLinePath(Lcom/dozingcatsoftware/vectorpinball/model/IFieldRenderer$FloatOnlyRenderer;[D[DI)V

    return-void
.end method

.method public drawLinePath([F[FI)V
    .locals 4

    .line 72
    iget-object v0, p0, Lcom/dozingcatsoftware/bouncy/GL10Renderer;->vertexListManager:Lcom/dozingcatsoftware/bouncy/util/GLVertexListManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/dozingcatsoftware/bouncy/util/GLVertexListManager;->addVertexListForMode(I)Lcom/dozingcatsoftware/bouncy/util/GLVertexList;

    move-result-object v0

    .line 73
    invoke-static {v0, p3}, Lcom/dozingcatsoftware/bouncy/GL10Renderer;->addColorToVertexList(Lcom/dozingcatsoftware/bouncy/util/GLVertexList;I)V

    const/4 p3, 0x0

    .line 74
    :goto_0
    array-length v1, p1

    if-ge p3, v1, :cond_0

    .line 75
    iget-object v1, p0, Lcom/dozingcatsoftware/bouncy/GL10Renderer;->manager:Lcom/dozingcatsoftware/bouncy/FieldViewManager;

    aget v2, p1, p3

    .line 76
    invoke-virtual {v1, v2}, Lcom/dozingcatsoftware/bouncy/FieldViewManager;->world2pixelX(F)F

    move-result v1

    iget-object v2, p0, Lcom/dozingcatsoftware/bouncy/GL10Renderer;->manager:Lcom/dozingcatsoftware/bouncy/FieldViewManager;

    aget v3, p2, p3

    invoke-virtual {v2, v3}, Lcom/dozingcatsoftware/bouncy/FieldViewManager;->world2pixelY(F)F

    move-result v2

    .line 75
    invoke-virtual {v0, v1, v2}, Lcom/dozingcatsoftware/bouncy/util/GLVertexList;->addVertex(FF)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method endGLElements(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/dozingcatsoftware/bouncy/GL10Renderer;->vertexListManager:Lcom/dozingcatsoftware/bouncy/util/GLVertexListManager;

    invoke-virtual {v0}, Lcom/dozingcatsoftware/bouncy/util/GLVertexListManager;->end()V

    const/16 v0, 0xbd0

    .line 46
    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    const/16 v0, 0x4100

    .line 47
    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glClear(I)V

    const/16 v0, 0x1700

    .line 48
    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 49
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 51
    iget-object v0, p0, Lcom/dozingcatsoftware/bouncy/GL10Renderer;->manager:Lcom/dozingcatsoftware/bouncy/FieldViewManager;

    invoke-virtual {v0}, Lcom/dozingcatsoftware/bouncy/FieldViewManager;->getLineWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glLineWidth(F)V

    .line 53
    iget-object v0, p0, Lcom/dozingcatsoftware/bouncy/GL10Renderer;->vertexListManager:Lcom/dozingcatsoftware/bouncy/util/GLVertexListManager;

    invoke-virtual {v0, p1}, Lcom/dozingcatsoftware/bouncy/util/GLVertexListManager;->render(Ljavax/microedition/khronos/opengles/GL10;)V

    return-void
.end method

.method public synthetic fillCircle(DDDI)V
    .locals 0

    invoke-static/range {p0 .. p7}, Lcom/dozingcatsoftware/vectorpinball/model/IFieldRenderer$FloatOnlyRenderer$-CC;->$default$fillCircle(Lcom/dozingcatsoftware/vectorpinball/model/IFieldRenderer$FloatOnlyRenderer;DDDI)V

    return-void
.end method

.method public fillCircle(FFFI)V
    .locals 6

    const/4 v5, 0x6

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 81
    invoke-virtual/range {v0 .. v5}, Lcom/dozingcatsoftware/bouncy/GL10Renderer;->drawCircle(FFFII)V

    return-void
.end method

.method public synthetic frameCircle(DDDI)V
    .locals 0

    invoke-static/range {p0 .. p7}, Lcom/dozingcatsoftware/vectorpinball/model/IFieldRenderer$FloatOnlyRenderer$-CC;->$default$frameCircle(Lcom/dozingcatsoftware/vectorpinball/model/IFieldRenderer$FloatOnlyRenderer;DDDI)V

    return-void
.end method

.method public frameCircle(FFFI)V
    .locals 6

    const/4 v5, 0x2

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 85
    invoke-virtual/range {v0 .. v5}, Lcom/dozingcatsoftware/bouncy/GL10Renderer;->drawCircle(FFFII)V

    return-void
.end method

.method public getHeight()I
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/dozingcatsoftware/bouncy/GL10Renderer;->glView:Lcom/dozingcatsoftware/bouncy/GLFieldView;

    invoke-virtual {v0}, Lcom/dozingcatsoftware/bouncy/GLFieldView;->getHeight()I

    move-result v0

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/dozingcatsoftware/bouncy/GL10Renderer;->glView:Lcom/dozingcatsoftware/bouncy/GLFieldView;

    invoke-virtual {v0}, Lcom/dozingcatsoftware/bouncy/GLFieldView;->getWidth()I

    move-result v0

    return v0
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/dozingcatsoftware/bouncy/GL10Renderer;->manager:Lcom/dozingcatsoftware/bouncy/FieldViewManager;

    invoke-virtual {v0}, Lcom/dozingcatsoftware/bouncy/FieldViewManager;->getField()Lcom/dozingcatsoftware/vectorpinball/model/Field;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 116
    :cond_0
    invoke-virtual {p0, p1}, Lcom/dozingcatsoftware/bouncy/GL10Renderer;->startGLElements(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 117
    monitor-enter v0

    .line 118
    :try_start_0
    invoke-virtual {v0, p0}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->draw(Lcom/dozingcatsoftware/vectorpinball/model/IFieldRenderer;)V

    .line 119
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 120
    invoke-virtual {p0, p1}, Lcom/dozingcatsoftware/bouncy/GL10Renderer;->endGLElements(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 121
    iget-object p1, p0, Lcom/dozingcatsoftware/bouncy/GL10Renderer;->renderLock:Ljava/lang/Object;

    monitor-enter p1

    const/4 v0, 0x1

    .line 122
    :try_start_1
    iput-boolean v0, p0, Lcom/dozingcatsoftware/bouncy/GL10Renderer;->renderDone:Z

    .line 123
    iget-object v0, p0, Lcom/dozingcatsoftware/bouncy/GL10Renderer;->renderLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 124
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception p1

    .line 119
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 1

    const/4 v0, 0x0

    .line 151
    invoke-interface {p1, v0, v0, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glViewport(IIII)V

    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 2

    const/4 p2, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 155
    invoke-interface {p1, p2, p2, p2, v0}, Ljavax/microedition/khronos/opengles/GL10;->glClearColor(FFFF)V

    const/16 v0, 0xc50

    const/16 v1, 0x1101

    .line 156
    invoke-interface {p1, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glHint(II)V

    const/16 v0, 0x1d00

    .line 157
    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glShadeModel(I)V

    const/16 v0, 0xb71

    .line 158
    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    const/16 v0, 0xbe2

    .line 161
    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    const/16 v0, 0x302

    const/16 v1, 0x303

    .line 162
    invoke-interface {p1, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    const/16 v0, 0x1701

    .line 168
    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 169
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 171
    invoke-virtual {p0}, Lcom/dozingcatsoftware/bouncy/GL10Renderer;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/dozingcatsoftware/bouncy/GL10Renderer;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-static {p1, p2, v0, v1, p2}, Landroid/opengl/GLU;->gluOrtho2D(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    return-void
.end method

.method public setManager(Lcom/dozingcatsoftware/bouncy/FieldViewManager;)V
    .locals 1

    .line 30
    iput-object p1, p0, Lcom/dozingcatsoftware/bouncy/GL10Renderer;->manager:Lcom/dozingcatsoftware/bouncy/FieldViewManager;

    .line 31
    iget-object v0, p0, Lcom/dozingcatsoftware/bouncy/GL10Renderer;->glView:Lcom/dozingcatsoftware/bouncy/GLFieldView;

    invoke-virtual {v0, p1}, Lcom/dozingcatsoftware/bouncy/GLFieldView;->setManager(Lcom/dozingcatsoftware/bouncy/FieldViewManager;)V

    return-void
.end method

.method startGLElements(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1

    .line 39
    iget-object p1, p0, Lcom/dozingcatsoftware/bouncy/GL10Renderer;->vertexListManager:Lcom/dozingcatsoftware/bouncy/util/GLVertexListManager;

    invoke-virtual {p1}, Lcom/dozingcatsoftware/bouncy/util/GLVertexListManager;->begin()V

    .line 40
    iget-object p1, p0, Lcom/dozingcatsoftware/bouncy/GL10Renderer;->vertexListManager:Lcom/dozingcatsoftware/bouncy/util/GLVertexListManager;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/dozingcatsoftware/bouncy/util/GLVertexListManager;->addVertexListForMode(I)Lcom/dozingcatsoftware/bouncy/util/GLVertexList;

    move-result-object p1

    iput-object p1, p0, Lcom/dozingcatsoftware/bouncy/GL10Renderer;->lineVertexList:Lcom/dozingcatsoftware/bouncy/util/GLVertexList;

    return-void
.end method
