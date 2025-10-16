.class final Lj$/time/format/DateTimeFormatterBuilder$CharLiteralPrinterParser;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj$/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;


# instance fields
.field private final literal:C


# direct methods
.method constructor <init>(C)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-char p1, p0, Lj$/time/format/DateTimeFormatterBuilder$CharLiteralPrinterParser;->literal:C

    return-void
.end method


# virtual methods
.method public final format(Lj$/time/format/DateTimePrintContext;Ljava/lang/StringBuilder;)Z
    .locals 0

    iget-char p1, p0, Lj$/time/format/DateTimeFormatterBuilder$CharLiteralPrinterParser;->literal:C

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 p1, 0x1

    return p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-char v0, p0, Lj$/time/format/DateTimeFormatterBuilder$CharLiteralPrinterParser;->literal:C

    const/16 v1, 0x27

    if-ne v0, v1, :cond_0

    const-string v0, "\'\'"

    return-object v0

    :cond_0
    const-string v0, "\'"

    .line 1
    invoke-static {v0}, Lj$/util/stream/StreamShape$EnumUnboxingLocalUtility;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2
    iget-char v2, p0, Lj$/time/format/DateTimeFormatterBuilder$CharLiteralPrinterParser;->literal:C

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
