.class public Lcom/dozingcatsoftware/bouncy/GL20Renderer;
.super Ljava/lang/Object;
.source "GL20Renderer.java"

# interfaces
.implements Lcom/dozingcatsoftware/vectorpinball/model/IFieldRenderer$FloatOnlyRenderer;
.implements Landroid/opengl/GLSurfaceView$Renderer;


# static fields
.field private static final CIRCLE_VERTEX_STRIDE_INTS:I = 0x8

.field private static final LINE_VERTEX_STRIDE_INTS:I = 0x4

.field private static final LITTLE_ENDIAN:Z

.field static final TAU:D = 6.283185307179586


# instance fields
.field cachedHeight:I

.field cachedLineWidth:I

.field cachedWidth:I

.field private circleCenterHandle:I

.field private circleColorHandle:I

.field private circleIndexBufferId:I

.field private circleInnerRadiusSquaredHandle:I

.field private circleMvpMatrixHandle:I

.field private circlePositionHandle:I

.field private circleProgramId:Ljava/lang/Integer;

.field private circleRadiusSquaredHandle:I

.field private circleVertexBufferId:I

.field private circleVertexIndices:Ljava/nio/IntBuffer;

.field private circleVertices:Ljava/nio/IntBuffer;

.field private fvManager:Lcom/dozingcatsoftware/bouncy/FieldViewManager;

.field private final glView:Lcom/dozingcatsoftware/bouncy/GLFieldView;

.field private lineColorHandle:I

.field private lineIndexBufferId:I

.field private lineMvpMatrixHandle:I

.field private linePositionHandle:I

.field private lineProgramId:Ljava/lang/Integer;

.field private lineVertexBufferId:I

.field private lineVertexIndices:Ljava/nio/IntBuffer;

.field private lineVertices:Ljava/nio/IntBuffer;

.field numCircleVertexIndices:I

.field numCircleVertices:I

.field numLineVertexIndices:I

.field numLineVertices:I

.field private final projectionMatrix:[F

.field renderDone:Z

.field final renderLock:Ljava/lang/Object;

.field private final shaderLookupFn:Lj$/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/function/Function<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field tmpCircleVertexIndices:[I

.field tmpCircleVertices:[I

.field tmpLineVertexIndices:[I

.field tmpLineVertices:[I

.field trigTable:Lcom/dozingcatsoftware/bouncy/util/TrigLookupTable;

.field private final vPMatrix:[F

.field private final viewMatrix:[F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 95
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->LITTLE_ENDIAN:Z

    return-void
.end method

.method public constructor <init>(Lcom/dozingcatsoftware/bouncy/GLFieldView;Lj$/util/function/Function;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dozingcatsoftware/bouncy/GLFieldView;",
            "Lj$/util/function/Function<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v1, v0, [F

    .line 37
    iput-object v1, p0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->vPMatrix:[F

    new-array v1, v0, [F

    .line 38
    iput-object v1, p0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->projectionMatrix:[F

    new-array v0, v0, [F

    .line 39
    iput-object v0, p0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->viewMatrix:[F

    const/4 v0, 0x0

    .line 41
    iput-object v0, p0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->circleProgramId:Ljava/lang/Integer;

    .line 49
    iput-object v0, p0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->lineProgramId:Ljava/lang/Integer;

    .line 54
    new-instance v0, Lcom/dozingcatsoftware/bouncy/util/TrigLookupTable;

    const/4 v1, 0x4

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Lcom/dozingcatsoftware/bouncy/util/TrigLookupTable;-><init>([I)V

    iput-object v0, p0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->trigTable:Lcom/dozingcatsoftware/bouncy/util/TrigLookupTable;

    const/16 v0, 0x100

    .line 141
    invoke-static {v0}, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->makeIntBuffer(I)Ljava/nio/IntBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->lineVertices:Ljava/nio/IntBuffer;

    const/16 v1, 0x40

    .line 142
    invoke-static {v1}, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->makeIntBuffer(I)Ljava/nio/IntBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->lineVertexIndices:Ljava/nio/IntBuffer;

    .line 148
    invoke-static {v0}, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->makeIntBuffer(I)Ljava/nio/IntBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->circleVertices:Ljava/nio/IntBuffer;

    .line 149
    invoke-static {v1}, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->makeIntBuffer(I)Ljava/nio/IntBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->circleVertexIndices:Ljava/nio/IntBuffer;

    const/16 v0, 0x400

    new-array v1, v0, [I

    .line 163
    iput-object v1, p0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->tmpLineVertices:[I

    new-array v1, v0, [I

    .line 164
    iput-object v1, p0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->tmpLineVertexIndices:[I

    new-array v1, v0, [I

    .line 165
    iput-object v1, p0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->tmpCircleVertices:[I

    new-array v0, v0, [I

    .line 166
    iput-object v0, p0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->tmpCircleVertexIndices:[I

    .line 704
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->renderLock:Ljava/lang/Object;

    .line 57
    iput-object p1, p0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->glView:Lcom/dozingcatsoftware/bouncy/GLFieldView;

    .line 58
    invoke-virtual {p1}, Lcom/dozingcatsoftware/bouncy/GLFieldView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 59
    invoke-virtual {p1}, Lcom/dozingcatsoftware/bouncy/GLFieldView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, -0x2

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    const/16 v3, 0x8

    const/16 v4, 0x8

    const/16 v5, 0x8

    const/16 v6, 0x8

    const/16 v7, 0x10

    const/4 v8, 0x0

    move-object v2, p1

    .line 60
    invoke-virtual/range {v2 .. v8}, Lcom/dozingcatsoftware/bouncy/GLFieldView;->setEGLConfigChooser(IIIIII)V

    const/4 v0, 0x2

    .line 61
    invoke-virtual {p1, v0}, Lcom/dozingcatsoftware/bouncy/GLFieldView;->setEGLContextClientVersion(I)V

    .line 62
    invoke-virtual {p1, p0}, Lcom/dozingcatsoftware/bouncy/GLFieldView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    const/4 v0, 0x0

    .line 63
    invoke-virtual {p1, v0}, Lcom/dozingcatsoftware/bouncy/GLFieldView;->setRenderMode(I)V

    .line 64
    iput-object p2, p0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->shaderLookupFn:Lj$/util/function/Function;

    return-void

    nop

    :array_0
    .array-data 4
        0x10
        0x20
        0x40
        0x80
    .end array-data
.end method

.method private addFilledCircle(FFFFI)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p4

    .line 482
    iget-object v3, v0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->tmpCircleVertices:[I

    iget v4, v0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->numCircleVertices:I

    const/16 v5, 0x20

    invoke-static {v3, v4, v5}, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->ensureRemaining([III)[I

    move-result-object v3

    iput-object v3, v0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->tmpCircleVertices:[I

    .line 484
    iget-object v3, v0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->tmpCircleVertexIndices:[I

    iget v4, v0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->numCircleVertexIndices:I

    const/4 v5, 0x6

    invoke-static {v3, v4, v5}, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->ensureRemaining([III)[I

    move-result-object v3

    iput-object v3, v0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->tmpCircleVertexIndices:[I

    .line 486
    invoke-virtual/range {p0 .. p1}, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->world2glX(F)F

    move-result v3

    .line 487
    invoke-virtual {v0, v1}, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->world2glY(F)F

    move-result v4

    .line 488
    invoke-virtual {v0, v2}, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->world2glX(F)F

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->world2glX(F)F

    move-result v7

    sub-float/2addr v5, v7

    .line 489
    invoke-static/range {p5 .. p5}, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->packColor(I)I

    move-result v7

    .line 491
    invoke-direct/range {p0 .. p1}, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->worldToGLPixelX(F)F

    move-result v8

    .line 492
    invoke-direct {v0, v1}, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->worldToGLPixelY(F)F

    move-result v1

    move/from16 v9, p3

    .line 494
    invoke-direct {v0, v9}, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->worldToGLPixelX(F)F

    move-result v9

    invoke-direct {v0, v6}, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->worldToGLPixelX(F)F

    move-result v10

    sub-float/2addr v9, v10

    mul-float v9, v9, v9

    .line 496
    invoke-direct {v0, v2}, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->worldToGLPixelX(F)F

    move-result v2

    invoke-direct {v0, v6}, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->worldToGLPixelX(F)F

    move-result v10

    sub-float/2addr v2, v10

    mul-float v2, v2, v2

    .line 499
    iget v10, v0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->numCircleVertices:I

    .line 500
    iget v11, v0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->numCircleVertexIndices:I

    .line 501
    iget-object v12, v0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->tmpCircleVertices:[I

    .line 502
    iget-object v13, v0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->tmpCircleVertexIndices:[I

    add-int/lit8 v14, v10, 0x1

    sub-float v15, v3, v5

    .line 506
    invoke-static {v15}, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->f2i(F)I

    move-result v16

    aput v16, v12, v10

    add-int/lit8 v10, v14, 0x1

    sub-float v16, v4, v5

    .line 507
    invoke-static/range {v16 .. v16}, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->f2i(F)I

    move-result v17

    aput v17, v12, v14

    add-int/lit8 v14, v10, 0x1

    .line 508
    invoke-static {v6}, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->f2i(F)I

    move-result v17

    aput v17, v12, v10

    add-int/lit8 v10, v14, 0x1

    .line 509
    aput v7, v12, v14

    add-int/lit8 v14, v10, 0x1

    .line 510
    invoke-static {v8}, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->f2i(F)I

    move-result v17

    aput v17, v12, v10

    add-int/lit8 v10, v14, 0x1

    .line 511
    invoke-static {v1}, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->f2i(F)I

    move-result v17

    aput v17, v12, v14

    add-int/lit8 v14, v10, 0x1

    .line 512
    invoke-static {v2}, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->f2i(F)I

    move-result v17

    aput v17, v12, v10

    add-int/lit8 v10, v14, 0x1

    .line 513
    invoke-static {v9}, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->f2i(F)I

    move-result v17

    aput v17, v12, v14

    add-int/lit8 v14, v10, 0x1

    add-float/2addr v3, v5

    .line 515
    invoke-static {v3}, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->f2i(F)I

    move-result v17

    aput v17, v12, v10

    add-int/lit8 v10, v14, 0x1

    .line 516
    invoke-static/range {v16 .. v16}, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->f2i(F)I

    move-result v16

    aput v16, v12, v14

    add-int/lit8 v14, v10, 0x1

    .line 517
    invoke-static {v6}, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->f2i(F)I

    move-result v16

    aput v16, v12, v10

    add-int/lit8 v10, v14, 0x1

    .line 518
    aput v7, v12, v14

    add-int/lit8 v14, v10, 0x1

    .line 519
    invoke-static {v8}, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->f2i(F)I

    move-result v16

    aput v16, v12, v10

    add-int/lit8 v10, v14, 0x1

    .line 520
    invoke-static {v1}, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->f2i(F)I

    move-result v16

    aput v16, v12, v14

    add-int/lit8 v14, v10, 0x1

    .line 521
    invoke-static {v2}, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->f2i(F)I

    move-result v16

    aput v16, v12, v10

    add-int/lit8 v10, v14, 0x1

    .line 522
    invoke-static {v9}, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->f2i(F)I

    move-result v16

    aput v16, v12, v14

    add-int/lit8 v14, v10, 0x1

    .line 524
    invoke-static {v15}, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->f2i(F)I

    move-result v15

    aput v15, v12, v10

    add-int/lit8 v10, v14, 0x1

    add-float/2addr v4, v5

    .line 525
    invoke-static {v4}, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->f2i(F)I

    move-result v5

    aput v5, v12, v14

    add-int/lit8 v5, v10, 0x1

    .line 526
    invoke-static {v6}, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->f2i(F)I

    move-result v14

    aput v14, v12, v10

    add-int/lit8 v10, v5, 0x1

    .line 527
    aput v7, v12, v5

    add-int/lit8 v5, v10, 0x1

    .line 528
    invoke-static {v8}, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->f2i(F)I

    move-result v14

    aput v14, v12, v10

    add-int/lit8 v10, v5, 0x1

    .line 529
    invoke-static {v1}, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->f2i(F)I

    move-result v14

    aput v14, v12, v5

    add-int/lit8 v5, v10, 0x1

    .line 530
    invoke-static {v2}, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->f2i(F)I

    move-result v14

    aput v14, v12, v10

    add-int/lit8 v10, v5, 0x1

    .line 531
    invoke-static {v9}, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->f2i(F)I

    move-result v14

    aput v14, v12, v5

    add-int/lit8 v5, v10, 0x1

    .line 533
    invoke-static {v3}, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->f2i(F)I

    move-result v3

    aput v3, v12, v10

    add-int/lit8 v3, v5, 0x1

    .line 534
    invoke-static {v4}, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->f2i(F)I

    move-result v4

    aput v4, v12, v5

    add-int/lit8 v4, v3, 0x1

    .line 535
    invoke-static {v6}, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->f2i(F)I

    move-result v5

    aput v5, v12, v3

    add-int/lit8 v3, v4, 0x1

    .line 536
    aput v7, v12, v4

    add-int/lit8 v4, v3, 0x1

    .line 537
    invoke-static {v8}, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->f2i(F)I

    move-result v5

    aput v5, v12, v3

    add-int/lit8 v3, v4, 0x1

    .line 538
    invoke-static {v1}, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->f2i(F)I

    move-result v1

    aput v1, v12, v4

    add-int/lit8 v1, v3, 0x1

    .line 539
    invoke-static {v2}, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->f2i(F)I

    move-result v2

    aput v2, v12, v3

    add-int/lit8 v2, v1, 0x1

    .line 540
    invoke-static {v9}, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->f2i(F)I

    move-result v3

    aput v3, v12, v1

    .line 542
    iget v1, v0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->numCircleVertices:I

    div-int/lit8 v1, v1, 0x8

    add-int/lit8 v3, v11, 0x1

    .line 543
    aput v1, v13, v11

    add-int/lit8 v4, v3, 0x1

    add-int/lit8 v5, v1, 0x1

    .line 544
    aput v5, v13, v3

    add-int/lit8 v3, v4, 0x1

    add-int/lit8 v6, v1, 0x2

    .line 545
    aput v6, v13, v4

    add-int/lit8 v4, v3, 0x1

    .line 546
    aput v5, v13, v3

    add-int/lit8 v3, v4, 0x1

    .line 547
    aput v6, v13, v4

    add-int/lit8 v4, v3, 0x1

    add-int/lit8 v1, v1, 0x3

    .line 548
    aput v1, v13, v3

    .line 550
    iput v2, v0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->numCircleVertices:I

    .line 551
    iput v4, v0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->numCircleVertexIndices:I

    return-void
.end method

.method private addLine(FFFFFFI)V
    .locals 20

    move-object/from16 v0, p0

    cmpl-float v2, p6, p5

    if-lez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x4

    if-eqz v2, :cond_1

    const/16 v4, 0x8

    goto :goto_1

    :cond_1
    const/4 v4, 0x4

    :goto_1
    if-eqz v2, :cond_2

    const/16 v5, 0x12

    goto :goto_2

    :cond_2
    const/4 v5, 0x6

    .line 359
    :goto_2
    iget v6, v0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->numLineVertices:I

    div-int/lit8 v7, v6, 0x4

    .line 360
    iget-object v8, v0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->tmpLineVertices:[I

    mul-int/lit8 v4, v4, 0x4

    invoke-static {v8, v6, v4}, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->ensureRemaining([III)[I

    move-result-object v3

    iput-object v3, v0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->tmpLineVertices:[I

    .line 362
    iget-object v3, v0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->tmpLineVertexIndices:[I

    iget v4, v0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->numLineVertexIndices:I

    invoke-static {v3, v4, v5}, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->ensureRemaining([III)[I

    move-result-object v3

    iput-object v3, v0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->tmpLineVertexIndices:[I

    .line 365
    invoke-virtual/range {p0 .. p1}, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->world2glX(F)F

    move-result v3

    move/from16 v4, p2

    .line 366
    invoke-virtual {v0, v4}, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->world2glY(F)F

    move-result v4

    move/from16 v5, p3

    .line 367
    invoke-virtual {v0, v5}, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->world2glX(F)F

    move-result v5

    move/from16 v6, p4

    .line 368
    invoke-virtual {v0, v6}, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->world2glY(F)F

    move-result v6

    .line 369
    invoke-static/range {p7 .. p7}, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->packColor(I)I

    move-result v8

    sub-float v9, v6, v4

    float-to-double v9, v9

    sub-float v11, v5, v3

    float-to-double v11, v11

    .line 371
    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v9

    const-wide v11, 0x3ff921fb54442d18L    # 1.5707963267948966

    add-double/2addr v9, v11

    .line 372
    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    double-to-float v11, v11

    .line 373
    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    double-to-float v9, v9

    .line 374
    iget v10, v0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->cachedHeight:I

    int-to-float v10, v10

    div-float v10, p5, v10

    mul-float v12, v10, v11

    mul-float v10, v10, v9

    .line 378
    iget-object v13, v0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->tmpLineVertices:[I

    .line 379
    iget-object v14, v0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->tmpLineVertexIndices:[I

    .line 380
    iget v15, v0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->numLineVertices:I

    .line 381
    iget v1, v0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->numLineVertexIndices:I

    add-int/lit8 v17, v15, 0x1

    sub-float v18, v3, v12

    .line 389
    invoke-static/range {v18 .. v18}, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->f2i(F)I

    move-result v18

    aput v18, v13, v15

    add-int/lit8 v15, v17, 0x1

    sub-float v18, v4, v10

    .line 390
    invoke-static/range {v18 .. v18}, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->f2i(F)I

    move-result v18

    aput v18, v13, v17

    add-int/lit8 v17, v15, 0x1

    const/16 v18, 0x0

    .line 391
    invoke-static/range {v18 .. v18}, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->f2i(F)I

    move-result v19

    aput v19, v13, v15

    add-int/lit8 v15, v17, 0x1

    .line 392
    aput v8, v13, v17

    add-int/lit8 v17, v15, 0x1

    sub-float v19, v5, v12

    .line 394
    invoke-static/range {v19 .. v19}, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->f2i(F)I

    move-result v19

    aput v19, v13, v15

    add-int/lit8 v15, v17, 0x1

    sub-float v19, v6, v10

    .line 395
    invoke-static/range {v19 .. v19}, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->f2i(F)I

    move-result v19

    aput v19, v13, v17

    add-int/lit8 v17, v15, 0x1

    .line 396
    invoke-static/range {v18 .. v18}, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->f2i(F)I

    move-result v19

    aput v19, v13, v15

    add-int/lit8 v15, v17, 0x1

    .line 397
    aput v8, v13, v17

    add-int/lit8 v17, v15, 0x1

    add-float v19, v3, v12

    .line 399
    invoke-static/range {v19 .. v19}, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->f2i(F)I

    move-result v19

    aput v19, v13, v15

    add-int/lit8 v15, v17, 0x1

    add-float v19, v4, v10

    .line 400
    invoke-static/range {v19 .. v19}, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->f2i(F)I

    move-result v19

    aput v19, v13, v17

    add-int/lit8 v17, v15, 0x1

    .line 401
    invoke-static/range {v18 .. v18}, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->f2i(F)I

    move-result v19

    aput v19, v13, v15

    add-int/lit8 v15, v17, 0x1

    .line 402
    aput v8, v13, v17

    add-int/lit8 v17, v15, 0x1

    add-float/2addr v12, v5

    .line 404
    invoke-static {v12}, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->f2i(F)I

    move-result v12

    aput v12, v13, v15

    add-int/lit8 v12, v17, 0x1

    add-float/2addr v10, v6

    .line 405
    invoke-static {v10}, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->f2i(F)I

    move-result v10

    aput v10, v13, v17

    add-int/lit8 v10, v12, 0x1

    .line 406
    invoke-static/range {v18 .. v18}, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->f2i(F)I

    move-result v15

    aput v15, v13, v12

    add-int/lit8 v12, v10, 0x1

    .line 407
    aput v8, v13, v10

    add-int/lit8 v8, v1, 0x1

    add-int/lit8 v10, v7, 0x0

    .line 409
    aput v10, v14, v1

    add-int/lit8 v1, v8, 0x1

    add-int/lit8 v15, v7, 0x1

    .line 410
    aput v15, v14, v8

    add-int/lit8 v8, v1, 0x1

    add-int/lit8 v17, v7, 0x2

    .line 411
    aput v17, v14, v1

    add-int/lit8 v1, v8, 0x1

    .line 412
    aput v15, v14, v8

    add-int/lit8 v8, v1, 0x1

    .line 413
    aput v17, v14, v1

    add-int/lit8 v1, v8, 0x1

    add-int/lit8 v19, v7, 0x3

    .line 414
    aput v19, v14, v8

    if-eqz v2, :cond_3

    move/from16 v2, p7

    const/4 v8, 0x0

    .line 417
    invoke-static {v2, v8}, Lcom/dozingcatsoftware/vectorpinball/model/Color;->withAlpha(II)I

    move-result v2

    invoke-static {v2}, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->packColor(I)I

    move-result v2

    .line 418
    iget v8, v0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->cachedHeight:I

    int-to-float v8, v8

    div-float v8, p6, v8

    mul-float v11, v11, v8

    mul-float v8, v8, v9

    add-int/lit8 v9, v12, 0x1

    sub-float v16, v3, v11

    .line 422
    invoke-static/range {v16 .. v16}, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->f2i(F)I

    move-result v16

    aput v16, v13, v12

    add-int/lit8 v12, v9, 0x1

    sub-float v16, v4, v8

    .line 423
    invoke-static/range {v16 .. v16}, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->f2i(F)I

    move-result v16

    aput v16, v13, v9

    add-int/lit8 v9, v12, 0x1

    .line 424
    invoke-static/range {v18 .. v18}, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->f2i(F)I

    move-result v16

    aput v16, v13, v12

    add-int/lit8 v12, v9, 0x1

    int-to-float v0, v2

    .line 425
    invoke-static {v0}, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->f2i(F)I

    move-result v0

    aput v0, v13, v9

    add-int/lit8 v0, v12, 0x1

    sub-float v9, v5, v11

    .line 427
    invoke-static {v9}, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->f2i(F)I

    move-result v9

    aput v9, v13, v12

    add-int/lit8 v9, v0, 0x1

    sub-float v12, v6, v8

    .line 428
    invoke-static {v12}, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->f2i(F)I

    move-result v12

    aput v12, v13, v0

    add-int/lit8 v0, v9, 0x1

    .line 429
    invoke-static/range {v18 .. v18}, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->f2i(F)I

    move-result v12

    aput v12, v13, v9

    add-int/lit8 v9, v0, 0x1

    .line 430
    aput v2, v13, v0

    add-int/lit8 v0, v9, 0x1

    add-float/2addr v3, v11

    .line 432
    invoke-static {v3}, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->f2i(F)I

    move-result v3

    aput v3, v13, v9

    add-int/lit8 v3, v0, 0x1

    add-float/2addr v4, v8

    .line 433
    invoke-static {v4}, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->f2i(F)I

    move-result v4

    aput v4, v13, v0

    add-int/lit8 v0, v3, 0x1

    .line 434
    invoke-static/range {v18 .. v18}, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->f2i(F)I

    move-result v4

    aput v4, v13, v3

    add-int/lit8 v3, v0, 0x1

    .line 435
    aput v2, v13, v0

    add-int/lit8 v0, v3, 0x1

    add-float/2addr v5, v11

    .line 437
    invoke-static {v5}, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->f2i(F)I

    move-result v4

    aput v4, v13, v3

    add-int/lit8 v3, v0, 0x1

    add-float/2addr v6, v8

    .line 438
    invoke-static {v6}, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->f2i(F)I

    move-result v4

    aput v4, v13, v0

    add-int/lit8 v0, v3, 0x1

    .line 439
    invoke-static/range {v18 .. v18}, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->f2i(F)I

    move-result v4

    aput v4, v13, v3

    add-int/lit8 v12, v0, 0x1

    .line 440
    aput v2, v13, v0

    add-int/lit8 v0, v1, 0x1

    .line 442
    aput v10, v14, v1

    add-int/lit8 v1, v0, 0x1

    .line 443
    aput v15, v14, v0

    add-int/lit8 v0, v1, 0x1

    add-int/lit8 v2, v7, 0x4

    .line 444
    aput v2, v14, v1

    add-int/lit8 v1, v0, 0x1

    .line 445
    aput v15, v14, v0

    add-int/lit8 v0, v1, 0x1

    .line 446
    aput v2, v14, v1

    add-int/lit8 v1, v0, 0x1

    add-int/lit8 v2, v7, 0x5

    .line 447
    aput v2, v14, v0

    add-int/lit8 v0, v1, 0x1

    .line 449
    aput v17, v14, v1

    add-int/lit8 v1, v0, 0x1

    .line 450
    aput v19, v14, v0

    add-int/lit8 v0, v1, 0x1

    add-int/lit8 v2, v7, 0x6

    .line 451
    aput v2, v14, v1

    add-int/lit8 v1, v0, 0x1

    .line 452
    aput v19, v14, v0

    add-int/lit8 v0, v1, 0x1

    .line 453
    aput v2, v14, v1

    add-int/lit8 v1, v0, 0x1

    add-int/lit8 v7, v7, 0x7

    .line 454
    aput v7, v14, v0

    :cond_3
    move-object/from16 v0, p0

    .line 457
    iput v12, v0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->numLineVertices:I

    .line 458
    iput v1, v0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->numLineVertexIndices:I

    return-void
.end method

.method private addPolygonOutline(FFFIFFI)V
    .locals 21

    move-object/from16 v0, p0

    .line 571
    iget-object v1, v0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->trigTable:Lcom/dozingcatsoftware/bouncy/util/TrigLookupTable;

    move/from16 v2, p4

    invoke-virtual {v1, v2}, Lcom/dozingcatsoftware/bouncy/util/TrigLookupTable;->valuesWithSizeAtLeast(I)Lcom/dozingcatsoftware/bouncy/util/TrigLookupTable$SinCosValues;

    move-result-object v1

    .line 572
    invoke-virtual {v1}, Lcom/dozingcatsoftware/bouncy/util/TrigLookupTable$SinCosValues;->size()I

    move-result v2

    cmpl-float v5, p6, p5

    if-lez v5, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    const/4 v6, 0x4

    if-eqz v5, :cond_1

    const/4 v7, 0x4

    goto :goto_1

    :cond_1
    const/4 v7, 0x2

    :goto_1
    mul-int v7, v7, v2

    if-eqz v5, :cond_2

    const/16 v8, 0x12

    goto :goto_2

    :cond_2
    const/4 v8, 0x6

    :goto_2
    mul-int v8, v8, v2

    .line 584
    iget-object v9, v0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->tmpLineVertices:[I

    iget v10, v0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->numLineVertices:I

    mul-int/lit8 v7, v7, 0x4

    invoke-static {v9, v10, v7}, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->ensureRemaining([III)[I

    move-result-object v6

    iput-object v6, v0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->tmpLineVertices:[I

    .line 586
    iget-object v6, v0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->tmpLineVertexIndices:[I

    iget v7, v0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->numLineVertexIndices:I

    invoke-static {v6, v7, v8}, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->ensureRemaining([III)[I

    move-result-object v6

    iput-object v6, v0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->tmpLineVertexIndices:[I

    .line 589
    invoke-virtual/range {p0 .. p1}, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->world2glX(F)F

    move-result v6

    move/from16 v7, p2

    .line 590
    invoke-virtual {v0, v7}, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->world2glY(F)F

    move-result v7

    move/from16 v8, p3

    .line 591
    invoke-virtual {v0, v8}, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->world2glX(F)F

    move-result v8

    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->world2glX(F)F

    move-result v10

    sub-float/2addr v8, v10

    .line 592
    iget v10, v0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->cachedHeight:I

    int-to-float v10, v10

    div-float v10, p5, v10

    sub-float v11, v8, v10

    add-float/2addr v10, v8

    .line 595
    invoke-static/range {p7 .. p7}, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->packColor(I)I

    move-result v12

    .line 597
    iget-object v13, v0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->tmpLineVertices:[I

    .line 598
    iget-object v14, v0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->tmpLineVertexIndices:[I

    .line 599
    iget v15, v0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->numLineVertices:I

    .line 600
    iget v4, v0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->numLineVertexIndices:I

    .line 601
    div-int/lit8 v16, v15, 0x4

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v2, :cond_4

    add-int/lit8 v18, v15, 0x1

    .line 604
    invoke-virtual {v1, v3}, Lcom/dozingcatsoftware/bouncy/util/TrigLookupTable$SinCosValues;->cosAtIndex(I)F

    move-result v19

    mul-float v19, v19, v11

    add-float v19, v6, v19

    invoke-static/range {v19 .. v19}, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->f2i(F)I

    move-result v19

    aput v19, v13, v15

    add-int/lit8 v15, v18, 0x1

    .line 605
    invoke-virtual {v1, v3}, Lcom/dozingcatsoftware/bouncy/util/TrigLookupTable$SinCosValues;->sinAtIndex(I)F

    move-result v19

    mul-float v19, v19, v11

    add-float v19, v7, v19

    invoke-static/range {v19 .. v19}, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->f2i(F)I

    move-result v19

    aput v19, v13, v18

    add-int/lit8 v18, v15, 0x1

    .line 606
    invoke-static {v9}, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->f2i(F)I

    move-result v19

    aput v19, v13, v15

    add-int/lit8 v15, v18, 0x1

    .line 607
    aput v12, v13, v18

    add-int/lit8 v18, v15, 0x1

    .line 609
    invoke-virtual {v1, v3}, Lcom/dozingcatsoftware/bouncy/util/TrigLookupTable$SinCosValues;->cosAtIndex(I)F

    move-result v19

    mul-float v19, v19, v10

    add-float v19, v6, v19

    invoke-static/range {v19 .. v19}, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->f2i(F)I

    move-result v19

    aput v19, v13, v15

    add-int/lit8 v15, v18, 0x1

    .line 610
    invoke-virtual {v1, v3}, Lcom/dozingcatsoftware/bouncy/util/TrigLookupTable$SinCosValues;->sinAtIndex(I)F

    move-result v19

    mul-float v19, v19, v10

    add-float v19, v7, v19

    invoke-static/range {v19 .. v19}, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->f2i(F)I

    move-result v19

    aput v19, v13, v18

    add-int/lit8 v18, v15, 0x1

    .line 611
    invoke-static {v9}, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->f2i(F)I

    move-result v19

    aput v19, v13, v15

    add-int/lit8 v15, v18, 0x1

    .line 612
    aput v12, v13, v18

    mul-int/lit8 v18, v3, 0x2

    add-int v18, v16, v18

    add-int/lit8 v9, v2, -0x1

    if-ge v3, v9, :cond_3

    add-int/lit8 v9, v4, 0x1

    add-int/lit8 v19, v18, 0x0

    .line 616
    aput v19, v14, v4

    add-int/lit8 v4, v9, 0x1

    add-int/lit8 v19, v18, 0x1

    .line 617
    aput v19, v14, v9

    add-int/lit8 v9, v4, 0x1

    add-int/lit8 v20, v18, 0x2

    .line 618
    aput v20, v14, v4

    add-int/lit8 v4, v9, 0x1

    .line 619
    aput v19, v14, v9

    add-int/lit8 v9, v4, 0x1

    .line 620
    aput v20, v14, v4

    add-int/lit8 v4, v9, 0x1

    add-int/lit8 v18, v18, 0x3

    .line 621
    aput v18, v14, v9

    goto :goto_4

    :cond_3
    add-int/lit8 v9, v4, 0x1

    add-int/lit8 v19, v18, 0x0

    .line 625
    aput v19, v14, v4

    add-int/lit8 v4, v9, 0x1

    add-int/lit8 v18, v18, 0x1

    .line 626
    aput v18, v14, v9

    add-int/lit8 v9, v4, 0x1

    .line 627
    aput v16, v14, v4

    add-int/lit8 v4, v9, 0x1

    .line 628
    aput v18, v14, v9

    add-int/lit8 v9, v4, 0x1

    .line 629
    aput v16, v14, v4

    add-int/lit8 v4, v9, 0x1

    add-int/lit8 v18, v16, 0x1

    .line 630
    aput v18, v14, v9

    :goto_4
    add-int/lit8 v3, v3, 0x1

    const/4 v9, 0x0

    goto/16 :goto_3

    :cond_4
    if-eqz v5, :cond_6

    .line 635
    iget v3, v0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->cachedHeight:I

    int-to-float v3, v3

    div-float v3, p6, v3

    sub-float v5, v8, v3

    add-float/2addr v8, v3

    move/from16 v3, p7

    const/4 v9, 0x0

    .line 638
    invoke-static {v3, v9}, Lcom/dozingcatsoftware/vectorpinball/model/Color;->withAlpha(II)I

    move-result v3

    invoke-static {v3}, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->packColor(I)I

    move-result v3

    :goto_5
    if-ge v9, v2, :cond_6

    add-int/lit8 v10, v15, 0x1

    .line 640
    invoke-virtual {v1, v9}, Lcom/dozingcatsoftware/bouncy/util/TrigLookupTable$SinCosValues;->cosAtIndex(I)F

    move-result v11

    mul-float v11, v11, v5

    add-float/2addr v11, v6

    invoke-static {v11}, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->f2i(F)I

    move-result v11

    aput v11, v13, v15

    add-int/lit8 v11, v10, 0x1

    .line 641
    invoke-virtual {v1, v9}, Lcom/dozingcatsoftware/bouncy/util/TrigLookupTable$SinCosValues;->sinAtIndex(I)F

    move-result v12

    mul-float v12, v12, v5

    add-float/2addr v12, v7

    invoke-static {v12}, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->f2i(F)I

    move-result v12

    aput v12, v13, v10

    add-int/lit8 v10, v11, 0x1

    const/4 v12, 0x0

    .line 642
    invoke-static {v12}, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->f2i(F)I

    move-result v15

    aput v15, v13, v11

    add-int/lit8 v11, v10, 0x1

    .line 643
    aput v3, v13, v10

    add-int/lit8 v10, v11, 0x1

    .line 645
    invoke-virtual {v1, v9}, Lcom/dozingcatsoftware/bouncy/util/TrigLookupTable$SinCosValues;->cosAtIndex(I)F

    move-result v12

    mul-float v12, v12, v8

    add-float/2addr v12, v6

    invoke-static {v12}, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->f2i(F)I

    move-result v12

    aput v12, v13, v11

    add-int/lit8 v11, v10, 0x1

    .line 646
    invoke-virtual {v1, v9}, Lcom/dozingcatsoftware/bouncy/util/TrigLookupTable$SinCosValues;->sinAtIndex(I)F

    move-result v12

    mul-float v12, v12, v8

    add-float/2addr v12, v7

    invoke-static {v12}, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->f2i(F)I

    move-result v12

    aput v12, v13, v10

    add-int/lit8 v10, v11, 0x1

    const/4 v12, 0x0

    .line 647
    invoke-static {v12}, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->f2i(F)I

    move-result v15

    aput v15, v13, v11

    add-int/lit8 v15, v10, 0x1

    .line 648
    aput v3, v13, v10

    mul-int/lit8 v10, v9, 0x2

    add-int v10, v16, v10

    mul-int/lit8 v11, v2, 0x2

    add-int v17, v10, v11

    add-int/lit8 v12, v2, -0x1

    if-ge v9, v12, :cond_5

    add-int/lit8 v11, v4, 0x1

    add-int/lit8 v12, v17, 0x0

    .line 653
    aput v12, v14, v4

    add-int/lit8 v4, v11, 0x1

    add-int/lit8 v12, v10, 0x0

    .line 654
    aput v12, v14, v11

    add-int/lit8 v11, v4, 0x1

    add-int/lit8 v18, v17, 0x2

    .line 655
    aput v18, v14, v4

    add-int/lit8 v4, v11, 0x1

    .line 656
    aput v12, v14, v11

    add-int/lit8 v11, v4, 0x1

    .line 657
    aput v18, v14, v4

    add-int/lit8 v4, v11, 0x1

    add-int/lit8 v12, v10, 0x2

    .line 658
    aput v12, v14, v11

    add-int/lit8 v11, v4, 0x1

    add-int/lit8 v12, v17, 0x1

    .line 660
    aput v12, v14, v4

    add-int/lit8 v4, v11, 0x1

    add-int/lit8 v12, v10, 0x1

    .line 661
    aput v12, v14, v11

    add-int/lit8 v11, v4, 0x1

    add-int/lit8 v17, v17, 0x3

    .line 662
    aput v17, v14, v4

    add-int/lit8 v4, v11, 0x1

    .line 663
    aput v12, v14, v11

    add-int/lit8 v11, v4, 0x1

    .line 664
    aput v17, v14, v4

    add-int/lit8 v4, v11, 0x1

    add-int/lit8 v10, v10, 0x3

    .line 665
    aput v10, v14, v11

    const/16 v17, 0x1

    goto :goto_6

    :cond_5
    add-int/lit8 v12, v4, 0x1

    add-int/lit8 v18, v17, 0x0

    .line 669
    aput v18, v14, v4

    add-int/lit8 v4, v12, 0x1

    add-int/lit8 v18, v10, 0x0

    .line 670
    aput v18, v14, v12

    add-int/lit8 v12, v4, 0x1

    add-int v11, v16, v11

    .line 671
    aput v11, v14, v4

    add-int/lit8 v4, v12, 0x1

    .line 672
    aput v18, v14, v12

    add-int/lit8 v12, v4, 0x1

    .line 673
    aput v11, v14, v4

    add-int/lit8 v4, v12, 0x1

    .line 674
    aput v16, v14, v12

    add-int/lit8 v12, v4, 0x1

    add-int/lit8 v17, v17, 0x1

    .line 676
    aput v17, v14, v4

    add-int/lit8 v4, v12, 0x1

    add-int/lit8 v10, v10, 0x1

    .line 677
    aput v10, v14, v12

    add-int/lit8 v12, v4, 0x1

    const/16 v17, 0x1

    add-int/lit8 v11, v11, 0x1

    .line 678
    aput v11, v14, v4

    add-int/lit8 v4, v12, 0x1

    .line 679
    aput v10, v14, v12

    add-int/lit8 v10, v4, 0x1

    .line 680
    aput v11, v14, v4

    add-int/lit8 v4, v10, 0x1

    add-int/lit8 v11, v16, 0x1

    .line 681
    aput v11, v14, v10

    :goto_6
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_5

    .line 686
    :cond_6
    iput v15, v0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->numLineVertices:I

    .line 687
    iput v4, v0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->numLineVertexIndices:I

    return-void
.end method

.method private createProgram(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .line 110
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v0

    const v1, 0x8b31

    .line 111
    invoke-direct {p0, v1, p1}, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->loadShader(ILjava/lang/String;)I

    move-result p1

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    const p1, 0x8b30

    .line 112
    invoke-direct {p0, p1, p2}, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->loadShader(ILjava/lang/String;)I

    move-result p1

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 113
    invoke-static {v0}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    return v0
.end method

.method private drawCircles()V
    .locals 11

    .line 248
    iget-object v0, p0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->circleVertices:Ljava/nio/IntBuffer;

    iget v1, p0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->numCircleVertices:I

    invoke-static {v0, v1}, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->ensureBufferCapacity(Ljava/nio/IntBuffer;I)Ljava/nio/IntBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->circleVertices:Ljava/nio/IntBuffer;

    .line 249
    invoke-virtual {v0}, Ljava/nio/IntBuffer;->clear()Ljava/nio/Buffer;

    .line 250
    iget-object v0, p0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->circleVertices:Ljava/nio/IntBuffer;

    iget-object v1, p0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->tmpCircleVertices:[I

    iget v2, p0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->numCircleVertices:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/nio/IntBuffer;->put([III)Ljava/nio/IntBuffer;

    .line 252
    iget-object v0, p0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->circleVertexIndices:Ljava/nio/IntBuffer;

    iget v1, p0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->numCircleVertexIndices:I

    invoke-static {v0, v1}, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->ensureBufferCapacity(Ljava/nio/IntBuffer;I)Ljava/nio/IntBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->circleVertexIndices:Ljava/nio/IntBuffer;

    .line 254
    invoke-virtual {v0}, Ljava/nio/IntBuffer;->clear()Ljava/nio/Buffer;

    .line 255
    iget-object v0, p0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->circleVertexIndices:Ljava/nio/IntBuffer;

    iget-object v1, p0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->tmpCircleVertexIndices:[I

    iget v2, p0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->numCircleVertexIndices:I

    invoke-virtual {v0, v1, v3, v2}, Ljava/nio/IntBuffer;->put([III)Ljava/nio/IntBuffer;

    .line 257
    iget-object v0, p0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->circleProgramId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 258
    iget v0, p0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->circleMvpMatrixHandle:I

    iget-object v1, p0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->vPMatrix:[F

    const/4 v2, 0x1

    invoke-static {v0, v2, v3, v1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 260
    iget v0, p0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->circleVertexBufferId:I

    const v1, 0x8892

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 263
    iget-object v0, p0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->circleVertices:Ljava/nio/IntBuffer;

    invoke-virtual {v0}, Ljava/nio/IntBuffer;->flip()Ljava/nio/Buffer;

    .line 264
    iget-object v0, p0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->circleVertices:Ljava/nio/IntBuffer;

    .line 265
    invoke-virtual {v0}, Ljava/nio/IntBuffer;->limit()I

    move-result v0

    const/4 v2, 0x4

    mul-int/lit8 v0, v0, 0x4

    iget-object v4, p0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->circleVertices:Ljava/nio/IntBuffer;

    const v5, 0x88e4

    .line 264
    invoke-static {v1, v0, v4, v5}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 267
    iget v0, p0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->circleIndexBufferId:I

    const v4, 0x8893

    invoke-static {v4, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 268
    iget-object v0, p0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->circleVertexIndices:Ljava/nio/IntBuffer;

    invoke-virtual {v0}, Ljava/nio/IntBuffer;->flip()Ljava/nio/Buffer;

    .line 269
    iget-object v0, p0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->circleVertexIndices:Ljava/nio/IntBuffer;

    .line 270
    invoke-virtual {v0}, Ljava/nio/IntBuffer;->limit()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    iget-object v6, p0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->circleVertexIndices:Ljava/nio/IntBuffer;

    .line 269
    invoke-static {v4, v0, v6, v5}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 272
    iget v0, p0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->circlePositionHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 273
    iget v5, p0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->circlePositionHandle:I

    const/4 v6, 0x3

    const/16 v7, 0x1406

    const/4 v8, 0x0

    const/16 v9, 0x20

    const/4 v10, 0x0

    invoke-static/range {v5 .. v10}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 277
    iget v0, p0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->circleColorHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 278
    iget v5, p0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->circleColorHandle:I

    const/4 v6, 0x4

    const/16 v7, 0x1401

    const/4 v8, 0x1

    const/16 v10, 0xc

    invoke-static/range {v5 .. v10}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 282
    iget v0, p0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->circleCenterHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 283
    iget v5, p0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->circleCenterHandle:I

    const/4 v6, 0x2

    const/16 v7, 0x1406

    const/4 v8, 0x0

    const/16 v10, 0x10

    invoke-static/range {v5 .. v10}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 287
    iget v0, p0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->circleRadiusSquaredHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 288
    iget v5, p0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->circleRadiusSquaredHandle:I

    const/4 v6, 0x1

    const/16 v10, 0x18

    invoke-static/range {v5 .. v10}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 292
    iget v0, p0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->circleInnerRadiusSquaredHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 293
    iget v5, p0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->circleInnerRadiusSquaredHandle:I

    const/16 v10, 0x1c

    invoke-static/range {v5 .. v10}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 297
    iget v0, p0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->numCircleVertexIndices:I

    const/16 v5, 0x1405

    invoke-static {v2, v0, v5, v3}, Landroid/opengl/GLES20;->glDrawElements(IIII)V

    .line 300
    invoke-static {v1, v3}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 301
    invoke-static {v4, v3}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 302
    iget v0, p0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->circlePositionHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 303
    iget v0, p0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->circleColorHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 304
    iget v0, p0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->circleCenterHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 305
    iget v0, p0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->circleRadiusSquaredHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 306
    iget v0, p0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->circleInnerRadiusSquaredHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    return-void
.end method

.method private drawLines()V
    .locals 11

    .line 310
    iget-object v0, p0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->lineVertices:Ljava/nio/IntBuffer;

    iget v1, p0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->numLineVertices:I

    invoke-static {v0, v1}, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->ensureBufferCapacity(Ljava/nio/IntBuffer;I)Ljava/nio/IntBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->lineVertices:Ljava/nio/IntBuffer;

    .line 311
    invoke-virtual {v0}, Ljava/nio/IntBuffer;->clear()Ljava/nio/Buffer;

    .line 312
    iget-object v0, p0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->lineVertices:Ljava/nio/IntBuffer;

    iget-object v1, p0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->tmpLineVertices:[I

    iget v2, p0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->numLineVertices:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/nio/IntBuffer;->put([III)Ljava/nio/IntBuffer;

    .line 314
    iget-object v0, p0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->lineVertexIndices:Ljava/nio/IntBuffer;

    iget v1, p0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->numLineVertexIndices:I

    invoke-static {v0, v1}, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->ensureBufferCapacity(Ljava/nio/IntBuffer;I)Ljava/nio/IntBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->lineVertexIndices:Ljava/nio/IntBuffer;

    .line 315
    invoke-virtual {v0}, Ljava/nio/IntBuffer;->clear()Ljava/nio/Buffer;

    .line 316
    iget-object v0, p0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->lineVertexIndices:Ljava/nio/IntBuffer;

    iget-object v1, p0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->tmpLineVertexIndices:[I

    iget v2, p0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->numLineVertexIndices:I

    invoke-virtual {v0, v1, v3, v2}, Ljava/nio/IntBuffer;->put([III)Ljava/nio/IntBuffer;

    .line 318
    iget-object v0, p0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->lineProgramId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 319
    iget v0, p0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->lineMvpMatrixHandle:I

    iget-object v1, p0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->vPMatrix:[F

    const/4 v2, 0x1

    invoke-static {v0, v2, v3, v1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 321
    iget v0, p0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->lineVertexBufferId:I

    const v1, 0x8892

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 322
    iget-object v0, p0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->lineVertices:Ljava/nio/IntBuffer;

    invoke-virtual {v0}, Ljava/nio/IntBuffer;->flip()Ljava/nio/Buffer;

    .line 323
    iget-object v0, p0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->lineVertices:Ljava/nio/IntBuffer;

    .line 324
    invoke-virtual {v0}, Ljava/nio/IntBuffer;->limit()I

    move-result v0

    const/4 v2, 0x4

    mul-int/lit8 v0, v0, 0x4

    iget-object v4, p0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->lineVertices:Ljava/nio/IntBuffer;

    const v5, 0x88e4

    .line 323
    invoke-static {v1, v0, v4, v5}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 326
    iget v0, p0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->lineIndexBufferId:I

    const v4, 0x8893

    invoke-static {v4, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 327
    iget-object v0, p0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->lineVertexIndices:Ljava/nio/IntBuffer;

    invoke-virtual {v0}, Ljava/nio/IntBuffer;->flip()Ljava/nio/Buffer;

    .line 328
    iget-object v0, p0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->lineVertexIndices:Ljava/nio/IntBuffer;

    .line 329
    invoke-virtual {v0}, Ljava/nio/IntBuffer;->limit()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    iget-object v6, p0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->lineVertexIndices:Ljava/nio/IntBuffer;

    .line 328
    invoke-static {v4, v0, v6, v5}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 331
    iget v0, p0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->linePositionHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 332
    iget v5, p0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->linePositionHandle:I

    const/4 v6, 0x3

    const/16 v7, 0x1406

    const/4 v8, 0x0

    const/16 v9, 0x10

    const/4 v10, 0x0

    invoke-static/range {v5 .. v10}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 335
    iget v0, p0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->lineColorHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 336
    iget v5, p0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->lineColorHandle:I

    const/4 v6, 0x4

    const/16 v7, 0x1401

    const/4 v8, 0x1

    const/16 v10, 0xc

    invoke-static/range {v5 .. v10}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 339
    iget v0, p0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->numLineVertexIndices:I

    const/16 v5, 0x1405

    invoke-static {v2, v0, v5, v3}, Landroid/opengl/GLES20;->glDrawElements(IIII)V

    .line 342
    invoke-static {v1, v3}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 343
    invoke-static {v4, v3}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 344
    iget v0, p0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->linePositionHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 345
    iget v0, p0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->lineColorHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    return-void
.end method

.method private endDraw()V
    .locals 19

    move-object/from16 v0, p0

    .line 230
    iget-object v1, v0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->circleProgramId:Ljava/lang/Integer;

    if-nez v1, :cond_0

    .line 231
    invoke-direct/range {p0 .. p0}, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->initShaders()V

    :cond_0
    const/16 v1, 0x4100

    .line 234
    invoke-static {v1}, Landroid/opengl/GLES20;->glClear(I)V

    .line 237
    iget-object v2, v0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->viewMatrix:[F

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x40400000    # 3.0f

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    invoke-static/range {v2 .. v12}, Landroid/opengl/Matrix;->setLookAtM([FIFFFFFFFFF)V

    .line 240
    iget-object v13, v0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->vPMatrix:[F

    const/4 v14, 0x0

    iget-object v15, v0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->projectionMatrix:[F

    const/16 v16, 0x0

    iget-object v1, v0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->viewMatrix:[F

    const/16 v18, 0x0

    move-object/from16 v17, v1

    invoke-static/range {v13 .. v18}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 242
    invoke-direct/range {p0 .. p0}, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->drawLines()V

    .line 243
    invoke-direct/range {p0 .. p0}, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->drawCircles()V

    return-void
.end method

.method private static ensureBufferCapacity(Ljava/nio/IntBuffer;I)Ljava/nio/IntBuffer;
    .locals 1

    .line 79
    invoke-virtual {p0}, Ljava/nio/IntBuffer;->capacity()I

    move-result v0

    if-lt v0, p1, :cond_0

    return-object p0

    .line 82
    :cond_0
    invoke-static {p1}, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->makeIntBuffer(I)Ljava/nio/IntBuffer;

    move-result-object p0

    return-object p0
.end method

.method private static ensureRemaining([III)[I
    .locals 2

    add-int v0, p1, p2

    .line 86
    array-length v1, p0

    if-gt v0, v1, :cond_0

    return-object p0

    .line 89
    :cond_0
    array-length v0, p0

    mul-int/lit8 p2, p2, 0x2

    add-int/2addr v0, p2

    array-length p2, p0

    mul-int/lit8 p2, p2, 0x2

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 90
    new-array p2, p2, [I

    const/4 v0, 0x0

    .line 91
    invoke-static {p0, v0, p2, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p2
.end method

.method private static f2i(F)I
    .locals 0

    .line 175
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p0

    return p0
.end method

.method private initShaders()V
    .locals 5

    const-string v0, "shaders/circle.vert"

    const-string v1, "shaders/circle.frag"

    .line 118
    invoke-direct {p0, v0, v1}, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->circleProgramId:Ljava/lang/Integer;

    .line 119
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v1, "uMVPMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->circleMvpMatrixHandle:I

    .line 120
    iget-object v0, p0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->circleProgramId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v2, "position"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->circlePositionHandle:I

    .line 121
    iget-object v0, p0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->circleProgramId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v3, "inColor"

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->circleColorHandle:I

    .line 122
    iget-object v0, p0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->circleProgramId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v4, "inCenter"

    invoke-static {v0, v4}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->circleCenterHandle:I

    .line 123
    iget-object v0, p0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->circleProgramId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v4, "inRadiusSquared"

    invoke-static {v0, v4}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->circleRadiusSquaredHandle:I

    .line 124
    iget-object v0, p0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->circleProgramId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v4, "inInnerRadiusSquared"

    invoke-static {v0, v4}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->circleInnerRadiusSquaredHandle:I

    const-string v0, "shaders/line.vert"

    const-string v4, "shaders/line.frag"

    .line 126
    invoke-direct {p0, v0, v4}, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->lineProgramId:Ljava/lang/Integer;

    .line 127
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->lineMvpMatrixHandle:I

    .line 128
    iget-object v0, p0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->lineProgramId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->linePositionHandle:I

    .line 129
    iget-object v0, p0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->lineProgramId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->lineColorHandle:I

    const/4 v0, 0x4

    new-array v1, v0, [I

    const/4 v2, 0x0

    .line 132
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenBuffers(I[II)V

    aget v0, v1, v2

    .line 133
    iput v0, p0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->lineVertexBufferId:I

    const/4 v0, 0x1

    aget v0, v1, v0

    .line 134
    iput v0, p0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->lineIndexBufferId:I

    const/4 v0, 0x2

    aget v0, v1, v0

    .line 135
    iput v0, p0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->circleVertexBufferId:I

    const/4 v0, 0x3

    aget v0, v1, v0

    .line 136
    iput v0, p0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->circleIndexBufferId:I

    return-void
.end method

.method private loadShader(ILjava/lang/String;)I
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->shaderLookupFn:Lj$/util/function/Function;

    invoke-interface {v0, p2}, Lj$/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 103
    invoke-static {p1}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result p1

    .line 104
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 105
    invoke-static {p1}, Landroid/opengl/GLES20;->glCompileShader(I)V

    return p1
.end method

.method private static makeByteBuffer(I)Ljava/nio/ByteBuffer;
    .locals 1

    .line 69
    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 70
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method private static makeIntBuffer(I)Ljava/nio/IntBuffer;
    .locals 0

    mul-int/lit8 p0, p0, 0x4

    .line 75
    invoke-static {p0}, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->makeByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object p0

    return-object p0
.end method

.method private static packColor(I)I
    .locals 1

    .line 98
    sget-boolean v0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->LITTLE_ENDIAN:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/dozingcatsoftware/vectorpinball/model/Color;->toAGBR(I)I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/dozingcatsoftware/vectorpinball/model/Color;->toRGBA(I)I

    move-result p0

    :goto_0
    return p0
.end method

.method private startDraw()V
    .locals 1

    .line 214
    invoke-virtual {p0}, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->cachedWidth:I

    .line 215
    invoke-virtual {p0}, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->cachedHeight:I

    .line 216
    iget-object v0, p0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->fvManager:Lcom/dozingcatsoftware/bouncy/FieldViewManager;

    invoke-virtual {v0}, Lcom/dozingcatsoftware/bouncy/FieldViewManager;->getLineWidth()I

    move-result v0

    iput v0, p0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->cachedLineWidth:I

    .line 218
    iget-object v0, p0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->lineVertices:Ljava/nio/IntBuffer;

    invoke-virtual {v0}, Ljava/nio/IntBuffer;->clear()Ljava/nio/Buffer;

    .line 219
    iget-object v0, p0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->lineVertexIndices:Ljava/nio/IntBuffer;

    invoke-virtual {v0}, Ljava/nio/IntBuffer;->clear()Ljava/nio/Buffer;

    .line 220
    iget-object v0, p0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->circleVertices:Ljava/nio/IntBuffer;

    invoke-virtual {v0}, Ljava/nio/IntBuffer;->clear()Ljava/nio/Buffer;

    .line 221
    iget-object v0, p0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->circleVertexIndices:Ljava/nio/IntBuffer;

    invoke-virtual {v0}, Ljava/nio/IntBuffer;->clear()Ljava/nio/Buffer;

    const/4 v0, 0x0

    .line 223
    iput v0, p0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->numLineVertices:I

    .line 224
    iput v0, p0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->numLineVertexIndices:I

    .line 225
    iput v0, p0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->numCircleVertices:I

    .line 226
    iput v0, p0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->numCircleVertexIndices:I

    return-void
.end method

.method private worldToGLPixelX(F)F
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->fvManager:Lcom/dozingcatsoftware/bouncy/FieldViewManager;

    invoke-virtual {v0, p1}, Lcom/dozingcatsoftware/bouncy/FieldViewManager;->world2pixelX(F)F

    move-result p1

    return p1
.end method

.method private worldToGLPixelY(F)F
    .locals 2

    .line 210
    iget v0, p0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->cachedHeight:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->fvManager:Lcom/dozingcatsoftware/bouncy/FieldViewManager;

    invoke-virtual {v1, p1}, Lcom/dozingcatsoftware/bouncy/FieldViewManager;->world2pixelY(F)F

    move-result p1

    sub-float/2addr v0, p1

    return v0
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

    .line 729
    iget-object v0, p0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->renderLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 730
    :try_start_0
    iput-boolean v1, p0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->renderDone:Z

    .line 731
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 733
    iget-object v0, p0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->glView:Lcom/dozingcatsoftware/bouncy/GLFieldView;

    invoke-virtual {v0}, Lcom/dozingcatsoftware/bouncy/GLFieldView;->requestRender()V

    .line 735
    iget-object v1, p0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->renderLock:Ljava/lang/Object;

    monitor-enter v1

    .line 736
    :catch_0
    :goto_0
    :try_start_1
    iget-boolean v0, p0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->renderDone:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_0

    .line 738
    :try_start_2
    iget-object v0, p0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->renderLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 743
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

    .line 731
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

.method public synthetic drawLine(DDDDI)V
    .locals 0

    invoke-static/range {p0 .. p9}, Lcom/dozingcatsoftware/vectorpinball/model/IFieldRenderer$FloatOnlyRenderer$-CC;->$default$drawLine(Lcom/dozingcatsoftware/vectorpinball/model/IFieldRenderer$FloatOnlyRenderer;DDDDI)V

    return-void
.end method

.method public drawLine(FFFFI)V
    .locals 8

    .line 463
    iget v0, p0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->cachedLineWidth:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    add-int/lit8 v1, v0, -0x2

    int-to-float v5, v1

    add-int/lit8 v0, v0, 0x2

    int-to-float v6, v0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v7, p5

    .line 464
    invoke-direct/range {v0 .. v7}, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->addLine(FFFFFFI)V

    goto :goto_0

    :cond_0
    int-to-float v5, v0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v7, p5

    .line 467
    invoke-direct/range {v0 .. v7}, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->addLine(FFFFFFI)V

    :goto_0
    return-void
.end method

.method public synthetic drawLinePath([D[DI)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/dozingcatsoftware/vectorpinball/model/IFieldRenderer$FloatOnlyRenderer$-CC;->$default$drawLinePath(Lcom/dozingcatsoftware/vectorpinball/model/IFieldRenderer$FloatOnlyRenderer;[D[DI)V

    return-void
.end method

.method public drawLinePath([F[FI)V
    .locals 8

    const/4 v0, 0x1

    .line 474
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    add-int/lit8 v1, v0, -0x1

    .line 475
    aget v3, p1, v1

    aget v4, p2, v1

    aget v5, p1, v0

    aget v6, p2, v0

    move-object v2, p0

    move v7, p3

    invoke-virtual/range {v2 .. v7}, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->drawLine(FFFFI)V

    add-int/lit8 v0, v0, 0x1

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
    .locals 9

    .line 555
    invoke-direct {p0, p3}, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->worldToGLPixelX(F)F

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->worldToGLPixelX(F)F

    move-result v2

    sub-float/2addr v0, v2

    const/high16 v2, 0x41200000    # 10.0f

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_0

    .line 559
    iget-object v0, p0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->fvManager:Lcom/dozingcatsoftware/bouncy/FieldViewManager;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Lcom/dozingcatsoftware/bouncy/FieldViewManager;->world2pixelX(F)F

    move-result v0

    iget-object v3, p0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->fvManager:Lcom/dozingcatsoftware/bouncy/FieldViewManager;

    invoke-virtual {v3, v1}, Lcom/dozingcatsoftware/bouncy/FieldViewManager;->world2pixelX(F)F

    move-result v1

    sub-float/2addr v0, v1

    div-float/2addr v2, v0

    sub-float v6, p3, v2

    add-float v7, p3, v2

    move-object v3, p0

    move v4, p1

    move v5, p2

    move v8, p4

    .line 561
    invoke-direct/range {v3 .. v8}, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->addFilledCircle(FFFFI)V

    goto :goto_0

    :cond_0
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p3

    move v5, p4

    .line 564
    invoke-direct/range {v0 .. v5}, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->addFilledCircle(FFFFI)V

    :goto_0
    return-void
.end method

.method public synthetic frameCircle(DDDI)V
    .locals 0

    invoke-static/range {p0 .. p7}, Lcom/dozingcatsoftware/vectorpinball/model/IFieldRenderer$FloatOnlyRenderer$-CC;->$default$frameCircle(Lcom/dozingcatsoftware/vectorpinball/model/IFieldRenderer$FloatOnlyRenderer;DDDI)V

    return-void
.end method

.method public frameCircle(FFFI)V
    .locals 9

    .line 691
    iget-object v0, p0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->fvManager:Lcom/dozingcatsoftware/bouncy/FieldViewManager;

    invoke-virtual {v0, p3}, Lcom/dozingcatsoftware/bouncy/FieldViewManager;->world2pixelX(F)F

    move-result v0

    iget-object v1, p0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->fvManager:Lcom/dozingcatsoftware/bouncy/FieldViewManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/dozingcatsoftware/bouncy/FieldViewManager;->world2pixelX(F)F

    move-result v1

    sub-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    const/16 v1, 0x100

    if-ge v0, v1, :cond_0

    const/16 v1, 0x40

    .line 694
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_0
    move v5, v0

    .line 695
    iget v0, p0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->cachedLineWidth:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_1

    add-int/lit8 v1, v0, -0x2

    int-to-float v6, v1

    add-int/lit8 v0, v0, 0x2

    int-to-float v7, v0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v8, p4

    .line 696
    invoke-direct/range {v1 .. v8}, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->addPolygonOutline(FFFIFFI)V

    goto :goto_0

    :cond_1
    int-to-float v6, v0

    const/4 v7, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v8, p4

    .line 700
    invoke-direct/range {v1 .. v8}, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->addPolygonOutline(FFFIFFI)V

    :goto_0
    return-void
.end method

.method public getHeight()I
    .locals 1

    .line 751
    iget-object v0, p0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->glView:Lcom/dozingcatsoftware/bouncy/GLFieldView;

    invoke-virtual {v0}, Lcom/dozingcatsoftware/bouncy/GLFieldView;->getHeight()I

    move-result v0

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 747
    iget-object v0, p0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->glView:Lcom/dozingcatsoftware/bouncy/GLFieldView;

    invoke-virtual {v0}, Lcom/dozingcatsoftware/bouncy/GLFieldView;->getWidth()I

    move-result v0

    return v0
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1

    .line 708
    iget-object p1, p0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->fvManager:Lcom/dozingcatsoftware/bouncy/FieldViewManager;

    invoke-virtual {p1}, Lcom/dozingcatsoftware/bouncy/FieldViewManager;->getField()Lcom/dozingcatsoftware/vectorpinball/model/Field;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 712
    :cond_0
    invoke-direct {p0}, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->startDraw()V

    .line 713
    monitor-enter p1

    .line 714
    :try_start_0
    invoke-virtual {p1, p0}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->draw(Lcom/dozingcatsoftware/vectorpinball/model/IFieldRenderer;)V

    .line 715
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 716
    invoke-direct {p0}, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->endDraw()V

    .line 717
    iget-object v0, p0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->renderLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 p1, 0x1

    .line 718
    :try_start_1
    iput-boolean p1, p0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->renderDone:Z

    .line 719
    iget-object p1, p0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->renderLock:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notify()V

    .line 720
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :catchall_1
    move-exception v0

    .line 715
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 8

    const/4 p1, 0x0

    .line 759
    invoke-static {p1, p1, p2, p3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    const/4 p1, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 760
    invoke-static {p1, p1, p1, v0}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 p1, 0xbe2

    .line 761
    invoke-static {p1}, Landroid/opengl/GLES20;->glEnable(I)V

    const/16 p1, 0x302

    const/16 v0, 0x303

    .line 762
    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    int-to-float p1, p2

    int-to-float p2, p3

    div-float v3, p1, p2

    .line 766
    iget-object v0, p0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->projectionMatrix:[F

    neg-float v2, v3

    const/4 v1, 0x0

    const/high16 v4, -0x40800000    # -1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x40400000    # 3.0f

    const/high16 v7, 0x40e00000    # 7.0f

    invoke-static/range {v0 .. v7}, Landroid/opengl/Matrix;->frustumM([FIFFFFFF)V

    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 0

    .line 755
    invoke-direct {p0}, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->initShaders()V

    return-void
.end method

.method public setManager(Lcom/dozingcatsoftware/bouncy/FieldViewManager;)V
    .locals 1

    .line 349
    iput-object p1, p0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->fvManager:Lcom/dozingcatsoftware/bouncy/FieldViewManager;

    .line 350
    iget-object v0, p0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->glView:Lcom/dozingcatsoftware/bouncy/GLFieldView;

    invoke-virtual {v0, p1}, Lcom/dozingcatsoftware/bouncy/GLFieldView;->setManager(Lcom/dozingcatsoftware/bouncy/FieldViewManager;)V

    return-void
.end method

.method world2glX(F)F
    .locals 4

    .line 189
    iget v0, p0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->cachedWidth:I

    iget v1, p0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->cachedHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    .line 190
    iget-object v1, p0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->fvManager:Lcom/dozingcatsoftware/bouncy/FieldViewManager;

    invoke-virtual {v1, p1}, Lcom/dozingcatsoftware/bouncy/FieldViewManager;->world2pixelX(F)F

    move-result p1

    .line 191
    iget v1, p0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->cachedWidth:I

    int-to-float v1, v1

    div-float/2addr v1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v1, v2, v1

    const/high16 v3, 0x40000000    # 2.0f

    mul-float p1, p1, v3

    div-float/2addr p1, v0

    sub-float/2addr p1, v2

    add-float/2addr p1, v1

    return p1
.end method

.method world2glY(F)F
    .locals 4

    .line 197
    iget v0, p0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->cachedWidth:I

    iget v1, p0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->cachedHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    .line 198
    iget-object v1, p0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->fvManager:Lcom/dozingcatsoftware/bouncy/FieldViewManager;

    invoke-virtual {v1, p1}, Lcom/dozingcatsoftware/bouncy/FieldViewManager;->world2pixelY(F)F

    move-result p1

    .line 199
    iget v1, p0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->cachedHeight:I

    int-to-float v1, v1

    div-float/2addr v1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v1, v2, v1

    const/high16 v3, 0x40000000    # 2.0f

    mul-float p1, p1, v3

    div-float/2addr p1, v0

    sub-float/2addr p1, v2

    add-float/2addr p1, v1

    neg-float p1, p1

    return p1
.end method
