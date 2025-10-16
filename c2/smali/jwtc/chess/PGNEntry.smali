.class public Ljwtc/chess/PGNEntry;
.super Ljava/lang/Object;
.source "PGNEntry.java"


# instance fields
.field public _move:I

.field public _sAnnotation:Ljava/lang/String;

.field public _sMove:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Ljwtc/chess/PGNEntry;->_sMove:Ljava/lang/String;

    .line 10
    iput-object p2, p0, Ljwtc/chess/PGNEntry;->_sAnnotation:Ljava/lang/String;

    .line 11
    iput p3, p0, Ljwtc/chess/PGNEntry;->_move:I

    return-void
.end method
