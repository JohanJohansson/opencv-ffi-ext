
require 'core/library'
require 'core/types'

module CVFFI

  # CVAPI(void)  cvLine( CvArr* img, 
  #                      CvPoint pt1, 
  #                      CvPoint pt2,
  #                      CvScalar color, 
  #                      int thickness CV_DEFAULT(1),
  #                      int line_type CV_DEFAULT(8), 
  #                      int shift CV_DEFAULT(0) );
  #attach_function :cvLine, [ :point, 
                              #CvPoint.by_value,

  # CVAPI(void)  cvCircle( CvArr* img, 
  #                        CvPoint center, 
  #                        int radius,
  #                        CvScalar color, 
  #                        int thickness CV_DEFAULT(1),
  #                        int line_type CV_DEFAULT(8), 
  #                        int shift CV_DEFAULT(0));
  attach_function :cvCircle, [ :pointer, CvPoint.by_value, :int,
                               CvScalar.by_value, :int, :int, :int ], :void

end