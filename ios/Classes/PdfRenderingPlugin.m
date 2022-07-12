#import "PdfRenderingPlugin.h"
#if __has_include(<pdf_rendering/pdf_rendering-Swift.h>)
#import <pdf_rendering/pdf_rendering-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "pdf_rendering-Swift.h"
#endif

@implementation PdfRenderingPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftPdfRenderingPlugin registerWithRegistrar:registrar];
}
@end
