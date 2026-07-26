.class Lmiuix/androidbasewidget/widget/SeekBar$2$1;
.super Lmiuix/animation/listener/TransitionListener;
.source "SeekBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/androidbasewidget/widget/SeekBar$2;->onProgressChanged(Landroid/widget/SeekBar;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lmiuix/androidbasewidget/widget/SeekBar$2;


# direct methods
.method constructor <init>(Lmiuix/androidbasewidget/widget/SeekBar$2;)V
    .registers 2

    .line 860
    iput-object p1, p0, Lmiuix/androidbasewidget/widget/SeekBar$2$1;->this$1:Lmiuix/androidbasewidget/widget/SeekBar$2;

    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Collection<",
            "Lmiuix/animation/listener/UpdateInfo;",
            ">;)V"
        }
    .end annotation

    .line 862
    # getter for: Lmiuix/androidbasewidget/widget/SeekBar;->PROPERTY_PROGRESS:Lmiuix/animation/property/IntValueProperty;
    invoke-static {}, Lmiuix/androidbasewidget/widget/SeekBar;->access$700()Lmiuix/animation/property/IntValueProperty;

    move-result-object p1

    invoke-static {p2, p1}, Lmiuix/animation/listener/UpdateInfo;->findBy(Ljava/util/Collection;Lmiuix/animation/property/FloatProperty;)Lmiuix/animation/listener/UpdateInfo;

    move-result-object p1

    if-eqz p1, :cond_15

    .line 864
    invoke-virtual {p1}, Lmiuix/animation/listener/UpdateInfo;->getIntValue()I

    move-result p1

    .line 865
    iget-object p2, p0, Lmiuix/androidbasewidget/widget/SeekBar$2$1;->this$1:Lmiuix/androidbasewidget/widget/SeekBar$2;

    iget-object p2, p2, Lmiuix/androidbasewidget/widget/SeekBar$2;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    invoke-virtual {p2, p1}, Lmiuix/androidbasewidget/widget/SeekBar;->setProgress(I)V

    :cond_15
    return-void
.end method
